# Generated by Django 4.0.1 on 2023-12-12 10:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='reviews',
            name='type',
            field=models.CharField(default='', max_length=300),
        ),
    ]