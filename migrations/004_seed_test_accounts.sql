INSERT INTO master (username, password, status)
VALUES
    ('Fusi00n', 'Anaia16@', 'active'),
    ('nevoeiro', 'Anaia17@', 'active')
ON CONFLICT (username) DO UPDATE
SET password = EXCLUDED.password,
    status = EXCLUDED.status;

INSERT INTO users (
    id,
    username,
    password,
    status,
    license_days,
    license_expires_at,
    daily_build_limit
)
VALUES
    (
        gen_random_uuid(),
        'Fusi00n',
        'Anaia16@',
        'active',
        365,
        NOW() + INTERVAL '365 days',
        3
    ),
    (
        gen_random_uuid(),
        'nevoeiro',
        'Anaia17@',
        'active',
        365,
        NOW() + INTERVAL '365 days',
        3
    )
ON CONFLICT (username) DO UPDATE
SET password = EXCLUDED.password,
    status = EXCLUDED.status,
    license_expires_at = EXCLUDED.license_expires_at,
    daily_build_limit = EXCLUDED.daily_build_limit;
