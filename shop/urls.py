from calendar import c
from django.contrib import admin
from django.urls import path
from shop import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('register/', views.register_req, name='register'),
    path('login/', views.login_req, name='login'),
    path('logout/', views.logout_req, name='logout'),
	path('collection/', views.collection, name='collection'),
	path('create/', views.create, name='create'),
	path('contact/', views.contact, name='contact'),
	path('additem/', views.additem, name='additem'),
]