FROM python:3.10-alpine

WORKDIR /docker-lab-part-1/

COPY ./requirements ./requirements

RUN python -m venv ./.venv

RUN . ./.venv/bin/activate

RUN pip install -r requirements/requirements.txt

COPY ./build ./build

COPY ./spaceship ./spaceship

EXPOSE 8080

CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
