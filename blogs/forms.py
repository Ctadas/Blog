from django import forms 
from blogs.models import NewUser

class NewUserForm(form.ModelForm):
	class Meta:
		models = NewUser 
		fields = ('avatar')