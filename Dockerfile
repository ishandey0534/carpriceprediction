FROM python:3.7

WORKDIR /carpredictionapp

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./random_forest_regression_model.pkl ./carpredictionapp

COPY ./app.py ./carpredictionapp

CMD [ "python", "./carpredictionapp/app.py" ]



