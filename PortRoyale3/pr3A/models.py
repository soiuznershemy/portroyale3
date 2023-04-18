from django.db import models

# Create your models here.

class City(models.Model):
    
    """
    This will be the slot for ports available - 60 cities.
    """

    city_name = models.CharField(max_length=50)
    slug = models.SlugField(default="", null=False)


    class Meta:
        ordering = ["city_name"]

    def __str__(self):
        return self.city_name
    
class Good(models.Model):
    
    """
    This will define Goods class which in turn 
    corelates to each cities - 20 kinds of goods.
    """
    goods_name = models.CharField(max_length=25)
    city_name = models.ManyToManyField(City)
    production_amount = models.IntegerField(default=0)
    goods_price = models.FloatField(default=0)

    class Meta:
        ordering = ["goods_name"]

    def __str__(self):
        return self.goods_name
    
class Products_in_City(models.Model):
    city = models.ForeignKey(City,
                             on_delete=models.CASCADE)
    goods = models.ForeignKey(Good,
                             on_delete=models.CASCADE)
    factory_amount = models.IntegerField(default=0)
    total_amount = models.IntegerField(default=0)
    netto = models.IntegerField(default=0)
    tara = models.IntegerField(default=0)
    
    class Meta:
        ordering = ["city"]

    def saveProducts(self):
        self.save()
    