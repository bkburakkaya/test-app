from flask import Flask
from helpers.version_helper import VersionHelper

app = Flask(__name__)


@app.route('/', methods=['GET'])
def welcome():
    return "Welcome to Test APP"


@app.route('/version', methods=['GET'])
def version():
    version_object = VersionHelper.get_version()
    return version_object


if __name__ == "__main__":
    app.run(debug=True)
