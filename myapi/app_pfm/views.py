from django.shortcuts import render
from rest_framework import viewsets
from .models import Subscribers
from .serializers import SubscribersSerializers
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

class SubscribersView(viewsets.ModelViewSet):
    queryset = Subscribers.objects.all()
    serializer_class = SubscribersSerializers

