from django.db import models

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