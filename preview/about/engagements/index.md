---
title: Engagements
description: Our collaborations and project engagements.
---
This page describes our project engagements and other collaborative activities.

Current:
{% for e in site.engagements -%}
{% unless e.ongoing %}{% continue %}{% endunless -%}
* [{{ e.title }}]({{ e.url }})
{% endfor %}

Past:
{% for e in site.engagements -%}
{% if e.ongoing %}{% continue %}{% endif -%}
* [{{ e.title }}]({{ e.url }})
{% endfor %}
