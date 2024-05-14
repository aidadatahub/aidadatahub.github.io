---
title: "SCAPIS Datasets"
description: "Information on SCAPIS datasets shared on the <a href='/'>AIDA Data Hub</a>."
---
The Swedish CArdioPulmonary bioImage Study – SCAPIS – is a nationwide, open-access, population-based cohort for the study of cardiovascular disease (CVD) and chronic obstructive pulmonary disease (COPD).

The aim is to predict and prevent cardiovascular and pulmonary disease. A total of 30,154 men and women in Sweden, from 50 to 64 years old, have been recruited and investigated with detailed imaging and functional analyses of the cardiovascular and pulmonary systems. The first public release of data was on March 17, 2021. All researchers based in Sweden, or international researchers in collaboration with an applicant based in Sweden, are welcome to apply for data.

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

You can also [Search](/search), see [Metrics](/metrics), use the [API](/api),
or learn more about [FAIR and DOI](/about#what-are-dois-and-dataset-registers).



## SCAPIS Datasets shared on the AIDA Data Hub

<div class="dataset-table">
  <table>
    {% for d in site.datasets %}
      {% if d.scapis %}
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