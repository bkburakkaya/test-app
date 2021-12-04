from flask import Flask

app = Flask(__name__)


@app.route('/', methods=['GET'])
def welcome():
    return "Welcome to Test APP"


@app.route('/version', methods=['GET'])
def version():
    version_object = {
        'version': 1.0
    }
    return version_object


if __name__ == "__main__":
    app.run(debug=True)
