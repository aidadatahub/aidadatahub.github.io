---
title: "People"
description: "People at the <a href='/'>AIDA Data Hub</a>."
---

## Staff at AIDA Data Hub

{% for d in site.people %}
    {{ d.name}}
{% endfor %}
