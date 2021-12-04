import json
import os


class VersionHelper:

    @staticmethod
    def get_version():
        parent_path = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))

        with open(parent_path + "/version.json") as json_file:
            version_object = json.load(json_file)
            json_file.close()

        version = {
            'version': str(version_object['majorVersion']) + "." + str(version_object["minorVersion"])
        }

        return version
