# Generated by Django 4.2 on 2023-04-21 09:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pr3A', '0013_alter_products_in_city_tara'),
    ]

    operations = [
        migrations.AlterField(
            model_name='products_in_city',
            name='netto',
            field=models.FloatField(default=0.0),
        ),
        migrations.AlterField(
            model_name='products_in_city',
            name='tara',
            field=models.FloatField(default=0.0),
        ),
        migrations.AlterField(
            model_name='products_in_city',
            name='total_amount',
            field=models.FloatField(default=0),
        ),
    ]
