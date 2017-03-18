"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib import admin
from django.conf import settings
import django.views.static
from django.views.generic import RedirectView
from blogs import views



urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^index/',include('blogs.urls')), 
    url(r'^$',views.index,name='index2'),
    url(r'^accounts/register/complete/$', RedirectView.as_view(url='/index/'), name='registration_register'),
    url(r'^accounts/',include('registration.backends.simple.urls')),
 ]

if settings.DEBUG:
    urlpatterns +=[
             url(r'^media/(?P<path>.*)',
        django.views.static.serve,
        {'document_root': settings.MEDIA_ROOT}), ]