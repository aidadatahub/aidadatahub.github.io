---
title: "Events"
---
### Current

{% include event-list.html id="upcoming" events=site.events %}

### Past

{% assign events = site.events | reversed %}
{% include event-list.html past=true id="past-events" events=events %}
