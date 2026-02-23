FROM quay.io/keboola/sandboxes-data-science:latest

COPY . /app
WORKDIR /app

RUN pip install --no-cache-dir .

COPY keboola-config/supervisord/app.conf /etc/supervisor/conf.d/app.conf
COPY keboola-config/nginx/sites/app.conf /etc/nginx/sites-enabled/app.conf
