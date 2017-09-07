from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.all_article, name='all_article'),
    url(r'^article/(?P<pk>\d+)/$', views.article_detail, name='article_detail'),
    url(r'^article/new$', views.article_new, name='article_new'),

    url(r'^article/(?P<pk>\d+)/comment/$', views.add_comment_to_article, name='add_comment_to_article'),

    
]	