# Planejamento — Landing page e pagamento com BTCPay Server

## 1. Objetivo

Criar uma landing page pública para receber um pagamento de valor fixo por meio de uma instância auto-hospedada do BTCPay Server.

Nesta primeira versão, o sistema fará somente três coisas:

1. Gerar uma cobrança com o valor fixo lido da tabela `settings`.
2. Direcionar o visitante ao checkout do BTCPay Server.
3. Reconhecer no backend quando o pagamento for recebido e liquidado.

Não haverá identificação do visitante, catálogo, produto, pedido, assinatura ou entrega nesta fase.

## 2. Escopo da primeira entrega

- Landing page pública na rota `/`.
- Botão para iniciar o pagamento.
- Valor fixo definido exclusivamente no backend.
- Criação de invoice pela Greenfield API do BTCPay Server.
- Redirecionamento para o checkout hospedado pelo BTCPay.
- Registro técnico da invoice no PostgreSQL.
- Webhook assinado para acompanhar mudanças de estado.
- Reconhecimento de `InvoiceSettled` como pagamento concluído.
- Endpoint técnico para consultar o estado de uma invoice.
- Tratamento de erros de configuração e comunicação.

## 3. Fora do escopo inicial

- Identificação, cadastro ou login do visitante.
- Tabela ou consulta de produtos.
- Carrinho ou catálogo.
- Pedidos comerciais.
- Entregáveis e downloads.
- Associação do pagamento a um usuário.
- Assinaturas e cobranças recorrentes.
- Planos, cupons ou períodos de teste.
- Reembolsos, e-mails ou painel financeiro.

## 4. Valor da cobrança

O valor e a moeda serão definidos na tabela PostgreSQL `settings` existente:

```text
key               | value
payment_amount    | 199.00
payment_currency  | BRL
```

O navegador não enviará valor, moeda ou identificador de produto. A cada criação de cobrança, o backend lerá `payment_amount` e `payment_currency` da tabela `settings`. Qualquer valor acrescentado a uma requisição manipulada será ignorado.

## 5. Frontend

A landing page exibirá a descrição, o valor fixo, um botão para gerar o pagamento e mensagens de carregamento ou erro.

Ao clicar no botão, o frontend fará um `POST` sem dados comerciais. Depois de receber o link do checkout, redirecionará o navegador ao BTCPay Server.

## 6. Backend e endpoints

### Organização dos arquivos

O `app.py` ficará responsável somente por criar e configurar a aplicação Flask e registrar as rotas. A integração com o BTCPay Server não será implementada diretamente nele.

A integração ficará em `services/btcpay.py`, contendo:

- Cliente HTTP da Greenfield API.
- Autenticação com a API key.
- Criação de invoices.
- Normalização das respostas.
- Tratamento de timeout, conexão e erros HTTP.
- Cálculo e validação da assinatura `BTCPay-Sig`.
- Mapeamento dos eventos do BTCPay para estados internos.

As rotas chamarão esse serviço e cuidarão somente da validação da requisição, persistência e resposta HTTP. Isso mantém credenciais e regras da integração centralizadas, facilita testes e evita concentrar a implementação no `app.py`.

### `GET /`

Renderiza a landing page com o valor fixo obtido da tabela `settings`.

### `POST /api/payments`

Lê o valor e a moeda da tabela `settings`, cria uma invoice no BTCPay, salva o registro técnico e devolve o link do checkout. O corpo não precisa conter produto, valor nem identificação.

### `GET /api/payments/<invoice_id>`

Retorna o estado conhecido da invoice. Nesta fase, será usado para testes e para uma futura página de acompanhamento.

### `POST /api/webhooks/btcpay`

Recebe eventos do BTCPay, valida `BTCPay-Sig` e atualiza o estado local da invoice.

## 7. Persistência no PostgreSQL

Será criada a tabela técnica `payments`. A tabela `settings` já existente será reutilizada como fonte de configuração do pagamento:

- `id`: identificador interno.
- `invoice_id`: identificador retornado pelo BTCPay, único.
- `amount`: valor usado na invoice.
- `currency`: moeda usada na invoice.
- `status`: último estado reconhecido.
- `checkout_url`: endereço do checkout.
- `created_at`: data de criação.
- `updated_at`: data da última atualização.
- `settled_at`: data da liquidação, quando houver.

A tabela `settings` deverá conter as chaves únicas `payment_amount` e `payment_currency`. O backend validará seus valores antes de criar cada invoice. Não serão criadas tabelas de produtos, pedidos, usuários ou entregas nesta fase.

## 8. Fluxo completo

1. O visitante anônimo abre a landing page.
2. A aplicação consulta a tabela `settings` e exibe o valor fixo.
3. O visitante clica no botão de pagamento.
4. O frontend envia `POST /api/payments` sem produto, valor ou identificação.
5. O backend lê `payment_amount` e `payment_currency` da tabela `settings`.
6. O backend cria uma invoice pela Greenfield API do BTCPay Server.
7. O backend salva `invoice_id`, valor, moeda, estado e checkout no PostgreSQL.
8. O frontend recebe o link e abre o checkout do BTCPay.
9. O visitante realiza o pagamento.
10. O BTCPay envia eventos ao webhook.
11. O backend valida `BTCPay-Sig` com HMAC-SHA256 sobre o corpo bruto.
12. O backend localiza o registro pelo `invoice_id`.
13. Ao receber `InvoiceSettled`, o backend marca o pagamento como `Settled` e grava `settled_at`.

O `invoice_id` é apenas o identificador técnico da cobrança gerado pelo BTCPay. Ele não identifica o visitante.

## 9. Estados reconhecidos

| Evento BTCPay | Estado local | Significado |
| --- | --- | --- |
| `InvoiceCreated` | `New` | Cobrança criada |
| `InvoiceReceivedPayment` | `Processing` | Pagamento detectado |
| `InvoiceProcessing` | `Processing` | Aguardando confirmação |
| `InvoiceSettled` | `Settled` | Pagamento liquidado |
| `InvoiceExpired` | `Expired` | Cobrança expirada |
| `InvoiceInvalid` | `Invalid` | Pagamento inválido |

Somente `Settled` será considerado pagamento concluído.

## 10. Configuração

```env
BTCPAY_URL=https://btcpay.seudominio.com
BTCPAY_STORE_ID=ID_DA_LOJA
BTCPAY_API_KEY=CHAVE_DA_API
BTCPAY_WEBHOOK_SECRET=SEGREDO_DO_WEBHOOK

POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=katana
POSTGRES_USER=USUARIO_DO_BANCO
POSTGRES_PASSWORD=SENHA_DO_BANCO
```

O webhook será configurado no BTCPay apontando para `https://seu-dominio.com/api/webhooks/btcpay`. Em desenvolvimento local será necessário um túnel HTTPS.

## 11. Segurança

- Credenciais somente no backend e fora do Git.
- Valor e moeda lidos exclusivamente da tabela `settings` pelo servidor.
- Rejeitar a criação se `payment_amount` ou `payment_currency` estiver ausente ou inválido.
- Validar a assinatura do webhook sobre o corpo bruto.
- Comparar assinaturas em tempo constante.
- Considerar concluído somente o estado `Settled`.
- Processar eventos de forma idempotente.
- Não registrar chaves ou segredos nos logs.
- Usar HTTPS em produção.

## 12. Etapas de implementação

### Fase 1 — Configuração e banco

- Adicionar as credenciais do BTCPay ao `.env`.
- Criar a tabela `payments` no PostgreSQL.
- Usar a tabela `settings` existente para `payment_amount` e `payment_currency`.
- Criar o cliente interno da Greenfield API em `services/btcpay.py`.
- Manter `app.py` limitado à configuração do Flask e ao registro das rotas.

### Fase 2 — Landing page

- Criar a rota pública `/`.
- Exibir o valor fixo.
- Criar o botão de pagamento.
- Implementar carregamento e erros.
- Redirecionar ao checkout do BTCPay.

### Fase 3 — Reconhecimento

- Criar o webhook.
- Validar `BTCPay-Sig`.
- Mapear os estados.
- Atualizar a invoice de forma idempotente.
- Criar o endpoint técnico de consulta.

### Fase 4 — Validação

- Confirmar que o navegador não envia o valor.
- Tentar enviar valor manipulado e confirmar que ele é ignorado.
- Testar configuração ausente ou inválida.
- Testar indisponibilidade do BTCPay.
- Testar webhook com assinatura válida e inválida.
- Criar uma invoice real e realizar um pagamento de teste.
- Confirmar atualização até `Settled`.

## 13. Critérios de aceite

- A landing page abre sem login.
- O visitante não precisa ser identificado.
- O botão gera uma invoice com o valor fixo da tabela `settings`.
- O cliente não consegue escolher ou alterar o valor.
- A invoice é registrada no PostgreSQL.
- O navegador é enviado ao checkout correto.
- Webhooks com assinatura inválida são rejeitados.
- `InvoiceSettled` atualiza o pagamento para `Settled`.
- Reenvios do mesmo evento não duplicam registros.
- Nenhuma credencial aparece no frontend ou no Git.

## 14. Evolução futura

Depois que o fluxo mínimo estiver validado, poderão ser adicionados identificação do comprador, pedidos, produto, catálogo, entregáveis, área logada, assinaturas, planos e painel administrativo.

Essas funcionalidades não fazem parte da implementação atual.