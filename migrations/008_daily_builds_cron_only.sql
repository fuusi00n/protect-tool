DROP TRIGGER IF EXISTS trg_reset_daily_builds_on_access ON users;
DROP FUNCTION IF EXISTS fn_reset_daily_builds_if_new_day();

CREATE OR REPLACE FUNCTION fn_reset_users_daily_builds()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE users
    SET daily_builds = 0,
        updated_at = NOW()
    WHERE daily_builds <> 0;
END;
$$;

DO $$
BEGIN
    CREATE EXTENSION IF NOT EXISTS pg_cron;

    PERFORM cron.unschedule(jobid)
    FROM cron.job
    WHERE jobname = 'reset_users_daily_builds';

    PERFORM cron.schedule(
        'reset_users_daily_builds',
        '0 0 * * *',
        $cron$SELECT fn_reset_users_daily_builds()$cron$
    );

    RAISE NOTICE 'pg_cron: job reset_users_daily_builds agendado (0 0 * * *).';
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'pg_cron indisponivel (%). Use cron do sistema: scripts/reset_daily_builds.py', SQLERRM;
END;
$$;
