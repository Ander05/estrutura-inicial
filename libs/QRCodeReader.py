from pyzbar.pyzbar import decode
from PIL import Image

def ler_qrcode_de_imagem(caminho_imagem):
    try:
        img = Image.open(caminho_imagem)
    except FileNotFoundError:
        return "Arquivo não encontrado"

    result = decode(img)
    if result and len(result) > 0:
        return result[0].data.decode("utf-8")
    else:
        return "Nenhum QR encontrado"

