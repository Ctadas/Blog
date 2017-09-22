from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Category(models.Model):
	name = models.CharField(max_length=128,unique=True,verbose_name='分类')

	class Meta:
		verbose_name='分类'
		verbose_name_plural='分类'

	def __str__(self):
		return self.name 

class Page(models.Model):
	category = models.ForeignKey(Category,verbose_name='分类')
	title = models.CharField(max_length=128,verbose_name='标题')
	views = models.IntegerField(default=0,verbose_name='阅读次数')
	context = models.TextField()
	picture = models.ImageField(upload_to='profile_images',blank=True)
	time = models.DateTimeField(auto_now_add=True, editable=True,verbose_name='创建时间')

	class Meta:
		verbose_name='文章'
		verbose_name_plural='文章'

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
	title = models.CharField(max_length=128,verbose_name='标题')
	about = models.TextField()
	picture = models.ImageField(upload_to='profile_images',blank=True)

	class Meta:
		verbose_name='主题'
		verbose_name_plural='主题'

	def __str__(self):
		return self.title