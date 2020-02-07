from django.contrib.auth.models import User, Group
from rest_framework import serializers
from .models import Subscribers, Article, List
from django.utils.timezone import now

class SubscribersSerializers(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Subscribers
        fields = ('id','name','email','phone')

class ArticleSerializers(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Article
        fields = '__all__'

class ListSerializers(serializers.HyperlinkedModelSerializer):
    class Meta:
        read_only = True
        model = Article
        lookup_url_kwarg = 'id'
        exclude = ('body','created_at','is_publish')