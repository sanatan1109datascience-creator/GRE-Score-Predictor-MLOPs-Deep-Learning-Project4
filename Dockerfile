FROM tensorflow/tensorflow:2.15.0

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir fastapi uvicorn scikit-learn joblib

CMD ["uvicorn", "Gre_score_predictor_fastapi:app", "--host", "0.0.0.0", "--port", "8000"]