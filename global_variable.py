from blogs.models import Category

def settings(request):
	context ={}
	cat = Category.objects.all()
	context['category'] = cat
	return context


	
