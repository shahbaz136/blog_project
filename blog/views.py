# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, get_object_or_404, redirect

from django.http import HttpResponse
from .models import Articles, Comments
from .forms import ArticleForm, CommentForm
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from django.db.models import F
    
# Create your views here.

def all_article(request):
    #print(request.user)
    articles=Articles.objects.all()
    return render(request, 'blog/article_list.html', {'articles':articles})


def article_detail(request, pk):
    article = get_object_or_404(Articles, pk=pk)
    comments = Comments.objects.filter(article=pk).select_related().values('text','users__username')
    return render(request, 'blog/article_detail.html', {'article': article, 'comments':comments})


def article_new(request):
    if request.method == "POST":
        form = ArticleForm(request.POST)
        if form.is_valid():
            article = form.save(commit=False)
            article.author = request.user
            article.created = timezone.now()
            article.save()
            return redirect('article_detail', pk=article.pk)
    else:
        form = ArticleForm()
    return render(request, 'blog/article_edit.html', {'form': form})


def add_comment_to_article(request, pk):
    article = get_object_or_404(Articles, pk=pk)
    if request.method == "POST":
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.users=request.user
            comment.article = article
            comment.save()
            Articles.objects.filter(id=article.id).update(comment_count=F('comment_count')+1)
            return redirect('article_detail', pk=article.pk)
    else:
        form = CommentForm()
    return render(request, 'blog/add_comment_to_article.html', {'form': form})