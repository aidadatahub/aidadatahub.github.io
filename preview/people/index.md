---
title: "People"
topics:
  - aida-data-hub
  - management
  - economy
  - data-sharing
  - research-support
  - system-design-support
  - policy-support
  - system-development
---

Meet the teams contributing to AIDA Data Hub:
* TOC
{:toc}

{% for topic in page.topics %}
## {{ topic | replace: '-', ' ' | capitalize | replace: "Aida data hub", "AIDA Data Hub"}}
{% include people-table.md topic=topic %}

{% endfor %}
