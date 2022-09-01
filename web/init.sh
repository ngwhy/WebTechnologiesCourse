sudo pip3 install virtualenv
sudo pip3 install pathlib2
virtualenv -p python3 venv
source venv/bin/activate
pip3 install django

sudo rm -rf /etc/nginx/sites-enabled/default

sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx_2_1_11.conf

sudo /etc/init.d/nginx restart

gunicorn -w 2 -c /home/box/web/etc/hello.py hello:app & gunicorn -w 2 -c /home/box/web/etc/qa.py ask.wsgi:application & curl -vv 'http://127.0.0.1:8000/login/'



#cd /home/box/web/
#sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app






