sudo pip3 install virtualenv
sudo pip3 install pathlib2
virtualenv -p python3 venv
source venv/bin/activate
pip3 install django


sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/hello.py  /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/task.py /etc/gunicorn.d/task.py
sudo /etc/init.d/gunicorn restart



#cd /home/box/web/
#sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app






