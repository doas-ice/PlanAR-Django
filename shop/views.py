from cmath import log
from importlib.metadata import requires
import re, os
from datetime import datetime
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib import messages
from django.shortcuts import render, redirect
from shop import models 
from django.contrib.auth.models import User
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required
# Create your views here.

def index(request):
	collection = models.Collections.objects.all().order_by('up_date')
	context = {'collection':collection}
	if request.method == "POST":
		con = models.Contact()
		con.name = request.POST.get('name');
		con.phone = request.POST.get('phone');
		con.email = request.POST.get('email');
		con.msg = request.POST.get('message');
		con.save()
	return render(request, 'shop/index.html', context)

def about(request):
	return render(request, 'shop/about.html')

def collection(request):
	collection = models.Collections.objects.all().order_by('up_date')
	context = {'collection':collection}
	return render(request, 'shop/collection.html', context)

def create(request):
	if not request.user.is_authenticated:
			messages.info(request, "You need to be logged in!")
			return redirect('login')
	items = models.Items.objects.all().order_by('up_date')
	context = {'items':items}
	return render(request, 'shop/create.html', context)

def register_req(request):
	if request.method == 'POST':
		fname = request.POST.get('fname')
		lname = request.POST.get('lname')
		uname = request.POST.get('uname')
		email = request.POST.get('email')
		passwd = request.POST.get('passwd')
		user = User.objects.create_user(first_name=fname, last_name=lname, username=uname, email=email, password=passwd)
		login(request, user)
		messages.success(request, "Registration successful." )
		return redirect('index')
	return render(request, 'shop/register.html')

def login_req(request):
	if request.method == "POST":
		uname = request.POST.get('uname')
		passwd = request.POST.get('passwd')
		user = authenticate(username=uname, password=passwd)
		if user is not None:
			login(request, user)
			messages.info(request, f"You are now logged in as {uname}.")
			return redirect("index")
		else:
			messages.error(request,"Invalid username or password.")
			return redirect('login')
	return render(request, 'shop/login.html')

def logout_req(request):
	logout(request)
	messages.info(request, "You have successfully logged out.") 
	return redirect("login")

def contact(request):
	if request.method == "POST":
		con = models.Contact()
		con.name = request.POST.get('name');
		con.phone = request.POST.get('phone');
		con.email = request.POST.get('email');
		con.msg = request.POST.get('message');
		con.save()
	return render(request, 'shop/contact.html')

def additem(request):
	if request.method == "POST":
		if request.POST.get('type') == "0":
			item = models.Collections()
		elif request.POST.get('type') == "1":
			item = models.Items()
		else:
			return redirect('additem')
		item.name = request.POST.get('name')
		item.desc = request.POST.get('desc')
		if len(request.FILES) != 0:
			item.img = request.FILES['img']
		item.save()
		return redirect('additem')
	return render(request, 'shop/additem.html')

