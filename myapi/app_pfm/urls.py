from django.urls import path, include
from . import views
from rest_framework import routers
from .viewsets import ArticleViewSet, List

router = routers.DefaultRouter()
router.register('Tambah-Subscriber', views.SubscribersView)
router.register(r'Detail-Artikel', ArticleViewSet)
router.register(r'List-Artikel', List)

urlpatterns = [
    path('', include(router.urls))
]
