from django.contrib import admin
from blogs.models import Category,Page,NewUser,Comment,Theme

# Register your models here.
admin.site.register(Category)
admin.site.register(Page)
admin.site.register(NewUser)
admin.site.register(Comment)
admin.site.register(Theme)