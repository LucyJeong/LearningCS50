from flask import Flask, redirect, render_template, request, session, url_for

app = Flask(__name__)

@app.route("/")
def index():
	return render_template('index.html')

@app.route("/register", methods=["POST"])
def register():
	if request.form['name'] == '' or 'captain' not in request.form or 'comfort' not in request.form or request.form['dorm'] == '':
		return render_template("failure.html")
	return render_template("success.html")
