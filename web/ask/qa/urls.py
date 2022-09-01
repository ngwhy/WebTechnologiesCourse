from django.conf.urls import url
from django.contrib import admin
from qa import views

urlpatterns = [
    url(r'^$', views.test),
    url(r'^login/', views.test),
    url(r'^signup/', views.test),
    url(r'^question/.+/', views.test),
    url(r'^ask/', views.test),
    url(r'^popular/', views.test),
    url(r'^new/', views.test)
]
