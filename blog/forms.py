from django import forms

from .models import Articles, Comments

class ArticleForm(forms.ModelForm):

    class Meta:
        model = Articles
        fields = ('title', 'body',)

class CommentForm(forms.ModelForm):

    class Meta:
        model = Comments
        fields = ('text',)