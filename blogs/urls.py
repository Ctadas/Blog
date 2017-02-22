from django.conf.urls import url
from blogs import views


urlpatterns = [
	url(r'^$',views.a,{'func':'index','name_list':''},name='index'), 
	url(r'^category/(?P<name_list>[\w\-]+)/$',views.a,{'func':'category'},name='category'),
	url(r'^blog/$',views.a,{'func':'blog','name_list':''},name='blog'),
	url(r'^goto/$',views.track_url,name='goto'),

]
