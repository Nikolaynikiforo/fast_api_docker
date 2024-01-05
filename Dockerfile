#
FROM python:3.9-slim
COPY ./src /app/src
COPY ./requirements.txt /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8000 5555
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--reload"]

# docker pull nikolanikiforov/fastapi-vet-app
# docker run -p 8000:8000 nikolanikiforov/fastapi-vet-app 
