from django.contrib import admin
from .models import Subscribers, Article

class PageSubsribers(admin.ModelAdmin):
    list_display = ('email','name','phone')
    list_display_links = ('email','name','phone')
    search_fields = ('email','name','phone')
    list_per_page = 10

class PageArticle(admin.ModelAdmin):
    list_display = ('title','body','created_at','is_publish')
    list_display_links = ('title','body','created_at','is_publish')
    search_fields = ('title','body','created_at','is_publish')
    list_per_page = 10

admin.site.register(Subscribers, PageSubsribers)
admin.site.register(Article, PageArticle)

# Register your models here.
