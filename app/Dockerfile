FROM python:3.12

WORKDIR /code

COPY main.py test_main.py __init__.py ./app/

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["fastapi", "run", "app/main.py", "--port", "80"]