# Generated by Django 2.1.11 on 2020-02-07 08:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_pfm', '0005_auto_20200207_1551'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='list',
            name='body',
        ),
        migrations.RemoveField(
            model_name='list',
            name='created_at',
        ),
        migrations.RemoveField(
            model_name='list',
            name='is_publish',
        ),
        migrations.RemoveField(
            model_name='list',
            name='title',
        ),
    ]
