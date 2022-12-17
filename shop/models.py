import os
from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Collections(models.Model):
	name = models.CharField(max_length = 50)
	desc = models.CharField(max_length = 5000)
	img = models.ImageField(upload_to = 'collections/', null = True, blank = True)
	up_date = models.DateTimeField(auto_now_add = True, blank = True)

class Items(models.Model):
	name = models.CharField(max_length = 50)
	desc = models.CharField(max_length = 5000)
	img = models.ImageField(upload_to = 'items/', null = True, blank = True)
	up_date = models.DateTimeField(auto_now_add = True, blank = True)

class Contact(models.Model):
	name = models.TextField(null = True, blank = True)
	email = models.TextField(null = True, blank = True)
	phone = models.TextField(null = True, blank = True)
	msg = models.TextField(null = True, blank = True)