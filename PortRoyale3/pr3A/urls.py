from django.urls import path

from . import views

app_name = 'pr3A'
urlpatterns = [
    path("", views.IndexView, name="all_items"),
]