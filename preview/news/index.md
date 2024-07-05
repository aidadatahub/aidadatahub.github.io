---
title: "News"
---
<ul>
{% for news in site.news %}
 <li>{{ news.date | date: "%Y-%m-%d" }} <a href="{{ news.url }}">{{ news.title }}</a> <br/> {{ news.excerpt  }}</li>
{% endfor %}
</ul>
