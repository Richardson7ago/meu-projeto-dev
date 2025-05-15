from flask import Flask
from app.main import main_bp
from app.senha import senha_bp

def create_app():
    app = Flask(__name__)
    
    # Registrar blueprints
    app.register_blueprint(main_bp)
    app.register_blueprint(senha_bp)
    
    return app
