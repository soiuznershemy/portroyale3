# Generated by Django 4.2 on 2023-04-14 00:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pr3A', '0003_rename_netto_products_in_city_tara'),
    ]

    operations = [
        migrations.RenameField(
            model_name='products_in_city',
            old_name='projected_gross_profit',
            new_name='netto',
        ),
        migrations.AddField(
            model_name='good',
            name='city_name',
            field=models.ManyToManyField(to='pr3A.city'),
        ),
    ]