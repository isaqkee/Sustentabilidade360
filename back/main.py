'''
Backend do Circuito Verde
No Linux, precisa instalar uma série de coisas:
# sudo apt install mariadb-server python3-flask python3-mysql.connector python3-flask-cors
'''

import mysql.connector
import json

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="recicla"
)

mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM pontos ORDER BY nome")
myresult = mycursor.fetchall()

colunas = mycursor.column_names
pontos = []

for x in myresult:
    d = dict(zip(colunas, x))
    pontos.append(d)

from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/pontos', methods=['GET'])
def listar_pontos():
    return json.dumps(pontos, indent=4, sort_keys=True, default=str)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
