---
title: "Datasets"
description: "Information on datasets shared through the AIDA Data Hub."
layout: overhaul
---
We help researchers share their data with the world, making high-quality
datasets more [FAIR](/metrics#fair) and citeable using digital object identifiers
([DOI](../about/fair)).

<!--FIXME make scapis page-->

* [Datasets](#datasets)
* [SCAPIS datasets](scapis)
* [Synthetic datasets](#synthetic)

See also:
* [Search](search)
* [Getting access](../data)
* [About FAIR and DOI](../about/fair)
* [API](/api)

## Datasets
{% assign bytes = 0 -%}
{% assign scans = 0 -%}
{% assign annotations = 0 -%}
{% assign datasets = 0 -%}
{% for d in site.datasets -%}
  {% if d.hidden %}{% continue  %}{% endif -%}
  {% if d.synthetic %}{% continue  %}{% endif -%}
  {% assign bytes = d.other.bytes | default: 0 | plus: bytes -%}
  {% assign scans = d.other.numberOfScans | default: 0 | plus: scans -%}
  {% assign annotations = d.other.numberOfAnnotations | default: 0 | plus: annotations -%}
  {% assign datasets = datasets | plus: 1 %}
{% endfor -%}
{{ datasets }} datasets: {% include human_friendly_filesize bytes=bytes %},
{{ scans }} scans, {{ annotations }} annotations. [More metrics...](../metrics)

<div class="dataset-table">
  <table>
    {% for d in site.datasets %}
      {% if d.hidden %}{% continue  %}{% endif %}
      {% if d.synthetic %}{% continue  %}{% endif %}
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

## Synthetic datasets {#synthetic}
{% assign bytes = 0 -%}
{% assign scans = 0 -%}
{% assign annotations = 0 -%}
{% assign datasets = 0 -%}
{% for d in site.datasets -%}
  {% if d.hidden %}{% continue  %}{% endif -%}
  {% unless d.synthetic %}{% continue  %}{% endunless -%}
  {% assign bytes = d.other.bytes | default: 0 | plus: bytes -%}
  {% assign scans = d.other.numberOfScans | default: 0 | plus: scans -%}
  {% assign annotations = d.other.numberOfAnnotations | default: 0 | plus: annotations -%}
  {% assign datasets = datasets | plus: 1 %}
{% endfor -%}
{{ datasets }} datasets: {% include human_friendly_filesize bytes=bytes %},
{{ scans }} scans, {{ annotations }} annotations. [More metrics...](../metrics)

<div class="dataset-table">
  <table>
    {% for d in site.datasets %}
      {% if d.synthetic %}
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
      {% endif %}
    {% endfor %}
  </table>
</div>
