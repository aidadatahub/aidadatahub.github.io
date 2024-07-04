---
title: "People"
description: "The people of AIDA Data Hub."
layout: overhaul
topics:
  - aida-data-hub
  - management
  - economy
  - data-sharing
  - ai-support
  - systems-design-support
  - policy-support
  - systems-development
---

Meet the teams contributing to AIDA Data Hub:
* TOC
{:toc}

{% for topic in page.topics %}
## {{ topic | replace: '-', ' ' | capitalize | replace: "Ai ", "AI " | replace: "Aida data hub", "AIDA Data Hub"}}
{% include people-table.md topic=topic %}

{% endfor %}
