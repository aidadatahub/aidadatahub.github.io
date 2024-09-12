---
title: "Training"
description: "Training events and materials."
---

### Material from training events {#training}
Here is material from previous training events, please follow the links to find more information

<ul style="padding-left: 0px;">
{% for event in site.training-events %}
    <li style="display: block; padding-bottom: 1ex;" date="{{ event.date }}"><span class="small">{{ event.date | date: "%Y-%m-%d" }}</span> <br/> 
    <strong><a href="{{ event.url }}">{{ event.title }}</a></strong> <br/> 
    {{ event.blurb | markdownify | replace: '<p>', '' | replace: '</p>', ''}}</li>
{% endfor %}
</ul>

