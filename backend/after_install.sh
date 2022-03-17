#!/usr/bin/env bash

cd /opt/var/backend

# Install libaries
python3 -m venv env
source env/bin/activate

python3 -m pip install --upgrade pip

pwd
ls -lart

pip install -r requirements.txt

cd /opt/var/backend/backend
python3 manage.py migrate
# python manage.py collectstatic --no-input

python manage.py runserver 8000

# # Set permission for all files
# sudo chown -R www-data:www-data /var/www/

# # Restart services
# sudo -Hu www-data chmod a+x /var/www/backend/server_configs/scripts/gunicorn_django.sh
# sudo service supervisor restart
# sudo service nginx restart