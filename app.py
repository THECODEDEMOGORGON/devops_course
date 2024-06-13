from flask import Flask
import yaml

app = Flask(__name__)

@app.route('/')
def hello():
    with open('/app/config.yaml', 'r') as config_file:
        config = yaml.safe_load(config_file)
    return f"Hello, {config['key']}!"

@app.route('/healthz')
def healthz():
    return "OK"

@app.route('/readiness')
def readiness():
    return "Ready"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
