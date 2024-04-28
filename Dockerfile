FROM python

WORKDIR /docker-lab-part-1/

COPY . .

RUN python -m venv ./.venv

RUN . ./.venv/bin/acticate

RUN pip install -r requirements/requirements.txt

EXPOSE 8080

CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
