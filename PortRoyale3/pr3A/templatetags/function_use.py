from django import template

register = template.Library()

@register.filter(name='total_quantity_monthly')
def total_quantity_monthly(prod_amount):
    return prod_amount * 30

@register.filter(name='profit_monthly')
def profit_monthly(prod_amount, goods_price):
    return prod_amount * goods_price * 30