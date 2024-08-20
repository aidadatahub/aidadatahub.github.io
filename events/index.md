---
title: "AIDA Data Hub Events"
---
## Current events {#current}

{% include event-list.html id="upcoming" events=site.events %}

## Past

{% assign events = site.events | reversed %}
{% include event-list.html past=true id="past-events" events=events %}
