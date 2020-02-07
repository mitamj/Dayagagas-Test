from rest_framework import viewsets
from .serializers import ArticleSerializers, ListSerializers
from .models import Article, List


class ArticleViewSet(viewsets.ReadOnlyModelViewSet):
    """
    This viewset automatically provides `list` and `detail` actions.
    """
    queryset = Article.objects.all()
    serializer_class = ArticleSerializers

class List(viewsets.ReadOnlyModelViewSet):
    """
    This viewset automatically provides `list` and `detail` actions.
    """
    queryset = List.objects.filter(is_publish=True)
    serializer_class = ListSerializers
