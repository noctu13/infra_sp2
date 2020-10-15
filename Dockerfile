FROM python:3.8.5

# создать директорию /code
RUN mkdir /code

# скопировать файл requirements.txt из директории, в которой лежит докерфайл, в директорию /code
COPY requirements.txt /code

# выполнить команду (как в терминале, с тем же синтаксисом) для установки пакетов из requirements.txt
RUN pip install -r /code/requirements.txt

# скопировать всё содержимое директории, в которой лежит докерфайл, в директорию /code
COPY . /code

# сделать папку code рабочей директорией
WORKDIR /code

# при старте контейнера запустить gunicorn
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
