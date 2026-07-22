import os

from flask import Flask, redirect, url_for

from config import Config, ensure_directories
from routes.health import health_bp
from routes.katana import katana_bp
from routes.public_app import public_app_bp
from routes.subscriber import subscriber_bp


def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)
    ensure_directories(Config)

    app.register_blueprint(subscriber_bp)
    app.register_blueprint(katana_bp)
    app.register_blueprint(health_bp)
    app.register_blueprint(public_app_bp)

    @app.route("/")
    def root():
        return redirect(url_for("subscriber.login_page"))

    return app


app = create_app()

if __name__ == "__main__":
    debug = os.environ.get("FLASK_DEBUG", "1") == "1"
    app.run(debug=debug, use_reloader=debug, host="0.0.0.0", port=5000)
