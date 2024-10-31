from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Bem vindo ao mundo Cloud!☁ '

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
