from django.urls import path

from . import views

app_name = 'pr3A'
urlpatterns = [
    path("all_items/", views.AllView, name="all_items"),
    path("", views.IndexView.as_view(), name="index"),
    path("<slug:slug>/", views.ResultView, name="result"),
    path("<slug:slug>/amount_entry/", views.entry, name="entry"),
]