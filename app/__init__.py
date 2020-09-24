from flask import Flask


def create_app():
    """Create Flask application."""
    app = Flask(__name__, instance_relative_config=False)
    app.config.from_object('config.DevConfig')

    with app.app_context():
        # Import parts of our application
        from .hello_world import hello_world

        # Register Blueprints
        app.register_blueprint(hello_world.hello_world_bp)

        return app
