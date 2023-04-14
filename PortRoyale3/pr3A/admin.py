from django.contrib import admin

from .models import Products_in_City, City, Good
# Register your models here.

class GoodsInline(admin.TabularInline):
    model = Products_in_City
    extra = 1


class CitiesAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {"fields": ["city_name"]}),
    ]
    inlines = [GoodsInline]
    list_display = ["city_name"]
    # list_filter = ["pub_date"]
    # search_fields = ["question_text"]

admin.site.register(City, CitiesAdmin)
admin.site.register(Good)