# Flask
from flask import *

# Creating flask application


app = Flask(__name__)
# Get methods
@app.route('/api/home', methods=['GET'])
def home():
    return jsonify({"message":"Welcome to the home API"})

@app.route('/api/services', methods=['GET'])
def services():
    return jsonify({"message":"Welcome to our services API"})

@app.route('/api/products', methods=['GET'])
def product():
    return jsonify({"message":"Welcome to the product page"})

@app.route('/api/calc',methods=['POST'])
def calc():
    if request.method=='POST':
        num1 = request.form['num1']
        num2 = request.form['num2']
        sum = int(num1)+int(num2)
        return jsonify({"sum":sum})



if __name__ == '__main__':
    app.run(debug=True)
