from django.contrib import admin
from blogs.models import Category,Page,NewUser,Comment,Theme


class PageAdmin(admin.ModelAdmin):
	list_display =('title','category','views','time')
	search_fields = ('title','views','category__name')
	list_filter = ('title', 'category__name')
	fields = ('title','category','context','picture')

	class Media:
		js =(
			'js/editor/kindeditor-4.1.1/kindeditor-min.js',
            'js/editor/kindeditor-4.1.1/lang/zh_CN.js',
            'js/editor/kindeditor-4.1.1/config.js',
        )


class ThemeAdmin(admin.ModelAdmin):
	list_display = ('title')
# Register your models here.
admin.site.register(Category)
admin.site.register(Page,PageAdmin)
admin.site.register(NewUser)
admin.site.register(Comment)
admin.site.register(Theme)