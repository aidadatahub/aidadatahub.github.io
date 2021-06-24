---
title: "AIDA Dataset Register"
description: "Information on datasets shared on the <a href='/'>AIDA Data Hub</a>."
---
The most important factor for building world-class AI is access to massive
amounts of high-quality training data. We help researchers collaboratively
gather, annotate, share and enrich large volumes of research data for machine
learning in medical imaging diagnostics.

This register shows information on datasets that we have helped researchers
share [with the world](/metrics), to make their high-quality datasets more
[FAIR](/metrics#fair) and citeable using Digital Object Identifiers
([DOI](/about#what-are-dois-and-dataset-registers)).
{% assign bytes = 0 -%}
{% assign scans = 0 -%}
{% assign annotations = 0 -%}
{% assign datasets = 0 -%}
{% for d in site.datasets -%}
  {% if d.hidden %}{% continue  %}{% endif -%}
  {% assign bytes = d.other.bytes | default: 0 | plus: bytes -%}
  {% assign scans = d.other.numberOfScans | default: 0 | plus: scans -%}
  {% assign annotations = d.other.numberOfAnnotations | default: 0 | plus: annotations -%}
  {% assign datasets = datasets | plus: 1 %}
{% endfor -%}
So far <b>{% include human_friendly_filesize bytes=bytes %} </b> data
have been shared, in {{ scans }} scans with {{ annotations }} annotations in {{ datasets }} datasets,
according to clinical [data acquisition priorities](/prio)

You can also [Search](/search), see [Metrics](/metrics), use the [API](/api),
or learn more about [FAIR and DOI](/about#what-are-dois-and-dataset-registers).


## Datasets shared on the AIDA Data Hub

<div class="dataset-table">
  <table>
    {% for d in site.datasets %}
      {% if d.hidden %}{% continue  %}{% endif %}
      <tr>
        <td><a href="{{ d.url }}"><img src="{{ d.other.image | default: d.other.exampleImage[0].thumbnail-url | default: d.other.exampleImage[0].url }}"></a></td>
        <td>
          <a href="{{ d.url }}">{{ d.datacite.name }}</a><br/>
          <span class="keywords">Keywords: {{ d.datacite.keywords }}.</span><br/>
          <a href="{{ d.datacite["@id"] }}" class="doi">doi:{{ d.datacite["@id"] | remove: "https://doi.org/" }}</a>
        </td>
        <td>{{ d.datacite.datePublished | date: "%Y" }}</td>
      </tr>
    {% endfor %}
  </table>
</div>
