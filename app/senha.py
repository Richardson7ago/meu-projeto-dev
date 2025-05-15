from flask import Blueprint, jsonify
import secrets, string

senha_bp = Blueprint('senha', __name__)

@senha_bp.route("/gerar-senha")
def gerar_senha():
    caracteres = string.ascii_letters + string.digits + string.punctuation
    senha = ''.join(secrets.choice(caracteres) for _ in range(12))
    return jsonify({"senha": senha})
