FROM python:3.9-alpine

WORKDIR /carpredictionapp

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY ./random_forest_regression_model.pkl .

COPY ./app.py .

COPY ./templates ./templates

CMD [ "python", "./app.py" ]



