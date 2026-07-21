-- Migration 004: contas padrao (master + operador)

INSERT INTO master (username, password, status)
VALUES ('admin', 'Admin@2026', 'active')
ON CONFLICT (username) DO NOTHING;

INSERT INTO users (
    id,
    username,
    password,
    status,
    license_days,
    license_expires_at,
    daily_build_limit
)
VALUES (
    gen_random_uuid(),
    'operador',
    'Operador@2026',
    'active',
    365,
    NOW() + INTERVAL '365 days',
    3
)
ON CONFLICT (username) DO NOTHING;
