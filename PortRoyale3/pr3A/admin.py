from django.contrib import admin

from .models import Products_in_City, City, Good
# Register your models here.

class GoodsInline(admin.TabularInline):
    model = Products_in_City
    extra = 1


class CitiesAdmin(admin.ModelAdmin):
    inlines = [GoodsInline]
    list_display = ["city_name"]
    prepopulated_fields = {'slug': ('city_name',)}
    search_fields = ["city_name"]

admin.site.register(City, CitiesAdmin)
admin.site.register(Good)