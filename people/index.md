---
title: "People"
description: Meet the people contributing to AIDA Data Hub.
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

* TOC
{:toc}

{% for topic in page.topics %}
## {{ topic | replace: '-', ' ' | capitalize | replace: "Aida data hub", "AIDA Data Hub"}}
{% include people-topic-table.md active="active" topic=topic %}

{% endfor %}

## Alumni
People who have helped make AIDA Data Hub what it is today.

{% include people-topic-table.md active="inactive" topic="aida-data-hub" %}
