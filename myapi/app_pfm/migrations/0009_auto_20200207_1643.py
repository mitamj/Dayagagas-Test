# Generated by Django 2.1.11 on 2020-02-07 09:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_pfm', '0008_list'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='body',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='article',
            name='created_at',
            field=models.DateTimeField(auto_now=True, null=True),
        ),
        migrations.AlterField(
            model_name='article',
            name='is_publish',
            field=models.BooleanField(null=True),
        ),
        migrations.AlterField(
            model_name='article',
            name='title',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='list',
            name='body',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='list',
            name='created_at',
            field=models.DateTimeField(auto_now=True, null=True),
        ),
        migrations.AlterField(
            model_name='list',
            name='is_publish',
            field=models.BooleanField(null=True),
        ),
        migrations.AlterField(
            model_name='list',
            name='title',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='subscribers',
            name='email',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='subscribers',
            name='name',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='subscribers',
            name='phone',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
