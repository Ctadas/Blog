from django.shortcuts import render
from blogs.models import Category,Page 
from django.http import HttpResponseRedirect

# 主页
def index(request,context_dict):
	page_list = Page.objects.order_by('-time')[:3]
	context_dict['pages'] = page_list

	return render(request,'blog/index.html',context_dict)

# 分类页
def category(request,name_list,context_dict):
	try:
		categories = Category.objects.get(name = name_list)
		pages = Page.objects.filter(category=categories)
		context_dict['category'] = categories
		context_dict['pages'] = pages
	except Category.DoesNotExist:
		pass 

	return render(request,'blog/category.html',context_dict) 

# 文章页
def pages(request,name_list,context_dict):
	try:
		page = Page.objects.get(title = name_list)
		context_dict['page'] = page
	except Page.DoesNotExist:
		pass

	return render(request,'blog/page.html',context_dict)

# 所有文章页
def blog(request,context_dict):
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
				func = 'pages'
				name_list = page.title
				return a(request,func,name_list)
		else:
			return HttpResponseRedirect('/index/')

	return a(request,func,name_list)

# 处理base模板显示
def a (request,func,name_list):
	context_dict = {}
	category_list = Category.objects.all()
	context_dict['categories'] = category_list
	page_view = Page.objects.order_by('-views')[:5]
	context_dict['pages_view'] = page_view
	func_name = eval(func)  #用来计算在字符串中的有效Python表达式,并返回一个对象
	
	if func =='blog' or func =='index':
		return func_name(request,context_dict)

	else:
		return func_name(request,name_list,context_dict)
