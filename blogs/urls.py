from django.conf.urls import url
from blogs import views


urlpatterns = [
	url(r'^category/(?P<category_name>[\w\-]+)/$',views.category,name='category'),
	url(r'^$',views.index,name='index'),
	url(r'^(?P<page_title>[\w\-]+>)/$',views.pages,name='page'),
	url(r'^goto/$',views.track_url,name='goto'),
	url(r'^about/$',views.about,name='about'),
	url(r'^blog/$',views.blog,name='blog'),
	url(r'^uploadImg/$',views.uploadImg,name='uploadImg'),

]
