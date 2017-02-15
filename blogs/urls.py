from django.conf.urls import url
from blogs import views


urlpatterns = [
	url(r'^$',views.index,name='index'), 
	url(r'^category/(?P<category_name>[\w\-]+)/$',views.category,name='category'),
	url(r'^page/(?P<page_title>[\w\-]+)/$',views.pages,name='page'),
	url(r'^blog/$',views.blog,name='blog')

]
