from django.shortcuts import render

from .models import Student
from .serializer import StudentSer
from rest_framework.generics import ListCreateAPIView,RetrieveUpdateDestroyAPIView

class StudentListCreate(ListCreateAPIView):
    queryset = Student.objects.all()
    serializer_class = StudentSer

class StudentRetrieveUpdateDestroy(RetrieveUpdateDestroyAPIView):
    queryset = Student.objects.all()
    serializer_class = StudentSer

