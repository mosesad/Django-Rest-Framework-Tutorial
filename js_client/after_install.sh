#!/usr/bin/env bash

# Install libaries

virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt

cd /opt/var/frontend
python manage.py migrate
# python manage.py collectstatic --no-input

python manage.py runserver 8000

# # Set permission for all files
# sudo chown -R www-data:www-data /var/www/

# # Restart services
# sudo -Hu www-data chmod a+x /var/www/backend/server_configs/scripts/gunicorn_django.sh
# sudo service supervisor restart
# sudo service nginx restart