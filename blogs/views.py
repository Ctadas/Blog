from django.shortcuts import render
from blogs.models import Category,Page 

# Create your views here.
def index(request):
	context_dict = {}
	category_list = Category.objects.all()
	page_list = Page.objects.order_by('-time')[:3]
	page_view = Page.objects.order_by('-views')[:5]
	context_dict['categories'] = category_list
	context_dict['pages'] = page_list
	context_dict['pages_view'] = page_view

	return render(request,'blog/index.html',context_dict)

def category(request,category_name):
	context_dict = {}
	try:
		categories = Category.objects.get(name = category_name)
		pages = Page.objects.filter(category=categories)
		context_dict['category'] = categories
		context_dict['pages'] = pages

		category_list = Category.objects.all()
		context_dict['categories'] = category_list
		page_view = Page.objects.order_by('-views')[:5]
		context_dict['pages_view'] = page_view

	except Category.DoesNotExist:
		pass 
	return render(request,'blog/category.html',context_dict) 

def pages(request,page_title):
	context_dict = {}
	try:
		page = Page.objects.get(title = page_title)
		context_dict['page'] = page

		category_list = Category.objects.all()
		context_dict['categories'] = category_list
		page_view = Page.objects.order_by('-views')[:5]
		context_dict['pages_view'] = page_view

	except Page.DoesNotExist:
		pass
	return render(request,'blog/page.html',context_dict)

def blog(request):
	context_dict = {}
	page = Page.objects.order_by('-time')
	context_dict['pages']=page

	category_list = Category.objects.all()
	context_dict['categories'] = category_list
	page_view = Page.objects.order_by('-views')[:5]
	context_dict['pages_view'] = page_view
	return render(request,'blog/blog.html',context_dict)