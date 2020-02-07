from django.db import models

class Subscribers(models.Model):
    email = models.CharField(max_length=100, null=True)
    name = models.CharField(max_length=100, null=True)
    phone = models.CharField(max_length=50, null=True)

class Article(models.Model):
    title = models.CharField(max_length=100, null=True)
    body = models.TextField(null=True)
    created_at = models.DateTimeField(auto_now=True, null=True)
    is_publish = models.BooleanField(null=True)

class List(models.Model):
    title = models.CharField(max_length=100, null=True)
    body = models.TextField(null=True)
    created_at = models.DateTimeField(auto_now=True, null=True)
    is_publish = models.BooleanField(null=True)

    class Meta:
        db_table = 'app_pfm_article'

