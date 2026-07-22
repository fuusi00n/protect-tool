# BTCPay local no Windows

Este pacote executa o clone oficial `btcpayserver-docker` usando Docker Desktop com containers Linux.

Configuracao local padrao:

- URL: `http://btcpay.local`;
- Bitcoin mainnet;
- pagamentos on-chain;
- Lightning desabilitado;
- Bitcoin Core podado em aproximadamente 25 GB;
- PostgreSQL e NBXplorer em containers proprios.

## Primeiro uso

1. Abra o Docker Desktop e aguarde `Engine running`.
2. Abra PowerShell como Administrador.
3. Execute:

```powershell
cd .\infra\btcpay
Copy-Item .\local.env.example .\local.env
.\setup-local.ps1
```

O script valida o Docker, usa ou clona o repositorio oficial na pasta irma `btcpayserver-docker`, adiciona `btcpay.local` ao arquivo `hosts`, gera o Compose oficial e inicia os containers.

## Operacao

```powershell
.\manage-local.ps1 status
.\manage-local.ps1 logs
.\manage-local.ps1 stop
.\manage-local.ps1 start
.\manage-local.ps1 restart
```

Parar os containers preserva volumes e dados. Nao use `docker compose down --volumes`, pois isso remove dados persistentes.

## Integracao com a aplicacao

Depois de criar a Store, API Key e webhook no BTCPay, configure no `.env` da aplicacao:

```env
BTCPAY_URL=http://btcpay.local
BTCPAY_STORE_ID=
BTCPAY_API_KEY=
BTCPAY_WEBHOOK_SECRET=
```

Para o BTCPay alcancar o Flask executado no Windows, use no webhook `http://host.docker.internal:5000/api/webhooks/btcpay`. Para testes externos, o endpoint HTTPS publico pode ser mantido.

## Observacoes

- A sincronizacao inicial da mainnet pode levar muitas horas.
- Nao aceite pagamentos reais antes de Bitcoin Core e NBXplorer sincronizarem.
- `local.env` e ignorado pelo Git.
- Docker Desktop usa WSL2 internamente, mas os comandos sao executados pelo PowerShell.
