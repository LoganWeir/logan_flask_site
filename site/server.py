from flask import Flask, render_template, request, jsonify, Response

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return render_template('home.html')


# @app.route('/eda', methods=['GET'])
# def eda():
#     return render_template('aaron_eda.html')

# @app.route('/profit-curve', methods=['GET'])
# def profit_curve():
#     return render_template('profit_curve_analysis.html')

# @app.route('/modeling', methods=['GET'])
# def modeling():
#     return render_template('modeling.html')



# @app.route('/dashboard', methods=['GET'])
# def dashboard():

#     db_return = {'_id':0,'name': 1, 'probability': 1, 'time_reported': 1}
#     data = list(table.find(projection=db_return))

#     # print (data[0]['time_reported'])
#     data.sort(key=lambda x: x['time_reported'], reverse=True)

#     return render_template('dashboard.html', result=data)


# @app.route('/update', methods=['POST'])
# def update():

#     df = prdct.load_db(table)

#     if df.empty == False:

#         df2 = prdct.mini_clean(df)

#         prdct.db_update_probability(df, table, model)

#     return "Yes!"


if __name__ == '__main__':

    # with open('model.pkl', 'rb') as f:
    #     model = pickle.load(f)

    # client = MongoClient('localhost', 27017)

    # db = client.prediction_db
    # table = db.predictions

    app.run(host='0.0.0.0', port=3333, debug=True)
