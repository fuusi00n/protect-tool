from flask import Flask, redirect, url_for

from config import Config, ensure_directories
from monitor_bitcoin import start_background_monitor
from routes.health import health_bp
from routes.katana import katana_bp
from routes.payments import payments_bp
from routes.public_app import public_app_bp
from routes.subscriber import subscriber_bp


def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    ensure_directories(Config)

    app.register_blueprint(subscriber_bp)
    app.register_blueprint(katana_bp)
    app.register_blueprint(health_bp)
    app.register_blueprint(payments_bp)
    app.register_blueprint(public_app_bp)

    @app.route("/")
    def root():
        return redirect(url_for("subscriber.login_page"))

    if Config.BITCOIN_MONITOR_ENABLED:
        start_background_monitor()

    return app


app = create_app()

if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=5000)
