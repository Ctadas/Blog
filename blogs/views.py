from django.shortcuts import render
from blogs.models import Category,Page,Theme 
from django.http import HttpResponseRedirect,HttpResponse
from django.views.decorators.csrf import csrf_exempt
import os
import time
import json

# 主页
def index(request):
	context_dict ={}
	page_list = Page.objects.order_by('-time')[:9]
	context_dict['pages'] = page_list
	theme_list = Theme.objects.all()
	context_dict['theme'] = theme_list
	return render(request,'blog/index.html',context_dict)

# 分类页
def category(request,category_name):
	context_dict ={}
	try:
		categories = Category.objects.get(name = category_name)
		pages = Page.objects.filter(category=categories)
		context_dict['pages'] = pages
		context_dict['category_list'] = categories
	except Category.DoesNotExist:
		pass 

	return render(request,'blog/category.html',context_dict) 

# 文章页
def pages(request,page_title):
	context_dict ={}
	try:
		page = Page.objects.get(title = page_title)
		context_dict['page'] = page
	except Page.DoesNotExist:
		pass

	return render(request,'blog/page.html',context_dict)

# 所有文章页
def blog(request):
	context_dict ={}
	page = Page.objects.order_by('-time')
	context_dict['pages']=page

	return render(request,'blog/blog.html',context_dict)

# 访问数追踪
def track_url(request):
	if request.method == 'GET':
		if 'page_id' in request.GET:
			page_id = request.GET['page_id']
			try:
				page = Page.objects.get(id = page_id)
			except Page.DoesNotExist:
				page = None
			if page:
				page.views = page.views + 1
				page.save()
				page_list = page.title
				return pages(request,page_list)
		else:
			return HttpResponseRedirect('/index/')

	return a(request,func,name_list)

def about(request):
	return render(request,'blog/about.html',{})



def mkdir(path): 		 #路径初始化，如果没有存放地点就新建
	path = path.strip()
	path = path.rstrip("\\")
	if not os.path.exists(path):
		os.makedirs(path)
	return path

def save_file(path, file_name, data):	#把data保存path/file_name文件中
	if data == None:
		return
	mkdir(path)
	if(not path.endswith("/")):
		 path=path+"/"
	file = open(path+file_name,"wb") 
	file.write(data)
	file.flush()

@csrf_exempt
def uploadImg(request):
	if request.method == 'POST':
		buf = request.FILES.get('imgFile',None)                                    #获取的图片文件                                          
		file_buff = buf.read()                                                 #获取图片内容
		time_format=str(time.strftime("%Y-%m-%d-%H%M%S",time.localtime()))     
		file_name = "img"+time_format+".jpg"                                    #img2016-02-13-072459.jpg                                
		save_file("static/images", file_name,file_buff)                     #blog/static/image/img2016-02-13-072459.jpg                 
		dict_tmp = {}                                                           #kindeditor定义了返回的方式是json，
		dict_tmp['error']=0                                                     #成功{ "error":0, "url": "/static/image/filename"}
		dict_tmp['url']="/static/images/"+file_name
		return HttpResponse(json.dumps(dict_tmp))    
