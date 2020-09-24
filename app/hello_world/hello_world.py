from flask import Blueprint


# Blueprint Configuration
hello_world_bp = Blueprint(
    'hello_world_bp',
    __name__
)


# Blueprint route
@hello_world_bp.route('/')
def hello_world():
    return "Hello world!"
