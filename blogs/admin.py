from django.contrib import admin
from blogs.models import Category,Page,NewUser,Comment,Theme


class PageAdmin(admin.ModelAdmin):
	list_display =('title',)

	class Media:
		js =(
			'js/editor/kindeditor-4.1.1/kindeditor-min.js',
            'js/editor/kindeditor-4.1.1/lang/zh_CN.js',
            'js/editor/kindeditor-4.1.1/config.js',
        )
# Register your models here.
admin.site.register(Category)
admin.site.register(Page,PageAdmin)
admin.site.register(NewUser)
admin.site.register(Comment)
admin.site.register(Theme)