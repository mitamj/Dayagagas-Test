# Generated by Django 2.1.11 on 2020-02-07 08:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_pfm', '0004_auto_20200207_1550'),
    ]

    operations = [
        migrations.AlterField(
            model_name='list',
            name='is_publish',
            field=models.IntegerField(),
        ),
    ]
