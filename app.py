import os

from flask import Flask, make_response, render_template, send_from_directory

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
        response = make_response(render_template("under_construction.html"), 404)
        response.headers["X-Robots-Tag"] = "noindex, nofollow"
        return response

    @app.route("/favicon.ico")
    def favicon():
        return send_from_directory(
            app.static_folder,
            "assets/favicon.png",
            mimetype="image/png",
        )

    if Config.BITCOIN_MONITOR_ENABLED:
        start_background_monitor()

    return app

app = create_app()

if __name__ == "__main__":
    debug = os.environ.get("FLASK_DEBUG", "0").strip().lower() not in {
        "0",
        "false",
        "no",
        "off",
    }
    app.run(debug=debug, host="0.0.0.0", port=5000, use_reloader=debug)
