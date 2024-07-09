---
title: "Support projects"
---
### Current projects {#current}

<ul style="padding-left: 0px;">
{% for project in site.support-projects %}
 {% unless project.ongoing %}{% continue %}{% endunless %}
 <li style="display: block; padding-bottom: 1ex;" date="{{ project.date }}" end="{{ project.end | default: project.date }}"><span class="small">{{ project.date | date: "%Y-%m-%d" }}{% if project.end %} - {{ project.end }}{% endif %}</span> <br/> <strong><a href="{{ project.url }}">{{ project.title }}</a></strong> <br/> {{ project.blurb | markdownify | replace: '<p>', '' | replace: '</p>', ''}}</li>
{% endfor %}
</ul>

### Past

<ul style="padding-left: 0px;">
{% for project in site.support-projects reversed %}
 {% if project.ongoing %}{% continue %}{% endif %}
 <li style="display: block; padding-bottom: 1ex;" date="{{ project.date }}" end="{{ project.end | default: project.date }}"><span class="small">{{ project.date | date: "%Y-%m-%d" }}{% if project.end %} - {{ project.end }}{% endif %}</span> <br/> <strong><a href="{{ project.url }}">{{ project.title }}</a></strong> <br/> {{ project.blurb | markdownify | replace: '<p>', '' | replace: '</p>', ''}}</li>
{% endfor %}
</ul>
