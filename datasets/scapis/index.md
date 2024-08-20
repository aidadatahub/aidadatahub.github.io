---
title: "SCAPIS datasets"
description: "Information on SCAPIS imaging datasets shared through the AIDA Data Hub."
---
We help the [SCAPIS](scapis.org) project share high-quality imaging datasets
with the world, making them more [FAIR](/metrics#fair) and citeable using
digital object identifiers ([DOI](../../about/fair)).

See also:
* [All Datasets](..)
* [Search](../search)
* [Getting access](../../data)
* [About FAIR and DOI](../../about/fair)
* [API](/api)

## Access
1. Find datasets of interest, for example by [browsing](#scapis-datasets) below or [searching](../search?q=name:scapis).
2. [Apply to SCAPIS](https://www.hjart-lungfonden.se/forskning/scapis/scapis-org/data-access/) for access.
3. SCAPIS head office communicates approval and instructions for access.
4. Following approval, [contact AIDA Data Hub](mailto:aida-data@nbis.se?subject=Access to SCAPIS data) for account generation, and be ready to provide:
 * Photo ID
 * Institutional email address and SMS number
 * The public part of a secure password protected SSH keypair
5. Following account creation, download approved data.
6. Optional: Get a [Data Science Platform](../../data-science-platform) at AIDA Data Hub to process images on-platform.

### Contact
Our [data sharing team](../people#data-sharing):
{% include people-topic-table.md topic='data-sharing' %}

Please contact us for support or more information!

## SCAPIS Datasets
{% assign bytes = 0 -%}
{% assign scans = 0 -%}
{% assign annotations = 0 -%}
{% assign datasets = 0 -%}
{% for d in site.datasets -%}
  {% if d.hidden %}{% continue  %}{% endif -%}
  {% if d.synthetic %}{% continue  %}{% endif -%}
  {% unless d.scapis %}{% continue  %}{% endunless -%}
  {% assign bytes = d.other.bytes | default: 0 | plus: bytes -%}
  {% assign scans = d.other.numberOfScans | default: 0 | plus: scans -%}
  {% assign annotations = d.other.numberOfAnnotations | default: 0 | plus: annotations -%}
  {% assign datasets = datasets | plus: 1 %}
{% endfor -%}
{{ datasets }} datasets: {% include human_friendly_filesize bytes=bytes %},
{{ scans }} scans, {{ annotations }} annotations. [More metrics...](../../metrics)

The full SCAPIS data is being transfered and is expected to become available for sharing in August.

<div class="dataset-table">
  <table>
    {% for d in site.datasets %}
      {% if d.hidden %}{% continue  %}{% endif %}
      {% if d.synthetic %}{% continue  %}{% endif %}
      {% unless d.scapis %}{% continue  %}{% endunless -%}
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
