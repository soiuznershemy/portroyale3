from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.utils import timezone
from django.views import generic

from .models import City, Good, Products_in_City

# Create your views here.

# functions

def gross_product(idt):
    total = Products_in_City.objects.get(id=idt)
    total.total_amount = total.goods.production_amount * total.factory_amount
    total.save()

def tara_product(item_name):

    # List of products
    # 2nd tier

    metal = Products_in_City.objects.get(goods__goods_name="Raw Metal")
    rum = Products_in_City.objects.get(goods__goods_name="Rum")
    bread = Products_in_City.objects.get(goods__goods_name="Bread")
    meat = Products_in_City.objects.get(goods__goods_name="Meat")
    textile = Products_in_City.objects.get(goods__goods_name="Textile")
    rope = Products_in_City.objects.get(goods__goods_name="Rope")

    # 3rd tier

    metal_goods = Products_in_City.objects.get(goods__goods_name="Metal Goods")
    clothing = Products_in_City.objects.get(goods__goods_name="Clothing")

    # 4th tier

    cacao = Products_in_City.objects.get(goods__goods_name="Cacao")
    coffee = Products_in_City.objects.get(goods__goods_name="Coffee")

    # Operation
    # This code will only work if each item has been registered into database.
    
    item = Products_in_City.objects.get(goods__goods_name=item_name)
    match item.goods.goods_name:
        case 'Wood':
            item.tara = int(.5 * metal.total_amount + 
                              .5 * metal_goods.total_amount + 
                              .5 * rum.total_amount)
        case 'Sugar':
            item.tara = int(1 * rum.total_amount + 
                              .5 * bread.total_amount)
        case 'Wheat':
            item.tara = int(.5 * bread.total_amount)
        case 'Corn':
            item.tara = int(2 * meat.total_amount)
        case 'Cotton':
            item.tara = int(1 * textile.total_amount)
        case 'Dye':
            item.tara = int(1 * clothing.total_amount)
        case 'Hemp':
            item.tara = int(1 * rope.total_amount)
        case 'Raw Metal':
            item.tara = int(1 * metal_goods.total_amount)
        case 'Textile':
            item.tara = int(1 * clothing.total_amount)
        case 'Metal Goods':
            item.tara = int(.25 * coffee.total_amount + 
                              .25 * cacao.total_amount)
        case _:
            item.tara = 0
            
    item.save()

def netto(idt):
    net = Products_in_City.objects.get(id=idt)
    net.netto = net.total_amount - net.tara
    net.save()

# class IndexView(generic.ListView):
#     template_name = "pr3A/all_items.html"
#     context_object_name = "factories"
    
#     def get_queryset(self):
#         return Products_in_City.objects.all()

def IndexView(request):
    products = Products_in_City.objects.all()
    for product in products:
        id = product.id
        name = product.goods.goods_name
        gross_product(id)
        tara_product(name)
        netto(id)
    
    context = {
        'factories':products
    }
    return render(request, 'pr3A/all_items.html', context)