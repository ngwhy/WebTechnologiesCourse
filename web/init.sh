sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/task.py /etc/gunicorn.d/task.py
sudo /etc/init.d/gunicorn restart



#cd /home/box/web/
#sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app






