from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Category(models.Model):
	name = models.CharField(max_length=128,unique=True)

	def __str__(self):
		return self.name 

class Page(models.Model):
	category = models.ForeignKey(Category)
	title = models.CharField(max_length=128)
	views = models.IntegerField(default=0)
	context = models.TextField()
	picture = models.ImageField(upload_to='profile_images',blank=True)
	time = models.DateTimeField(auto_now_add=True, editable=True)

	def __str__(self):
		return self.title

class NewUser(models.Model):
	user = models.OneToOneField(User)
	avatar = models.ImageField(upload_to='profile_images',blank=True)

	def __str__(self):
		return self.user.username

class Comment(models.Model):
	page = models.OneToOneField(Page)
	user = models.ForeignKey(NewUser)
	content = models.TextField(default=0)

	def __str__(self):
		return self.user.username

class Theme(models.Model):
	title = models.CharField(max_length=128)
	about = models.TextField()
	picture = models.ImageField(upload_to='profile_images',blank=True)

	def __str__(self):
		return self.title