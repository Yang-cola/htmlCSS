from flask import Flask, render_template

from flask_sse import sse
from flask_cors import CORS

app = Flask(__name__)
app.config['REDIS_URL'] = 'redis://localhost'
app.register_blueprint(sse, url_prefix='/stream')
cors = CORS(app)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/hello')
def publish_hello():
    sse.publish({'message': 'Hello!'}, type='greeting')
    return 'Message sent!'
