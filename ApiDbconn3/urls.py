from django.contrib import admin
from django.urls import path
from app1 import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('Studentapi/',views.StudentListCreate.as_view()),
    path('Studentapi/<int:pk>',views.StudentRetrieveUpdateDestroy.as_view()),
]


