from django.conf.urls import url
from blogs import views


urlpatterns = [
	# url(r'^$',views.a,{'func':'index','name_list':''},name='index'),
	# url(r'^category/(?P<name_list>[\w\-]+)/$',views.a,{'func':'category'},name='category'),
	# url(r'^blog/$',views.a,{'func':'blog','name_list':''},name='blog'),
	url(r'^$',views.index,name='index'),
	url(r'^(?P<page_title>[\w\-]+>)/$',views.pages,name='page'),
	url(r'^goto/$',views.track_url,name='goto'),
	url(r'^about/$',views.about,name='about'),
	url(r'^blog/$',views.blog,name='blog'),

]
