# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.utils import timezone

# Create your models here.
class Articles(models.Model):
    author = models.ForeignKey('auth.User')
    title = models.CharField(max_length=200, unique=True)
    body = models.TextField()
    created = models.DateTimeField(default=timezone.now)
    updated = models.DateTimeField(blank=True, null=True)
    comment_count = models.IntegerField(default=0)

    def __str__(self):
        return self.title


class Comments(models.Model):
	text=models.TextField()
	created=models.DateTimeField(default=timezone.now)
	article=models.ForeignKey(Articles)
	users = models.ForeignKey('auth.User')

	def __str__(self):
		return self.text
