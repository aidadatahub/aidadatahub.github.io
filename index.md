---
description: "Preview of the upcoming AIDA Data Hub website."
---
AIDA Data Hub is part of the [Analytic Imaging Diagnostics Arena](/about/aida) (AIDA),
and of the [SciLifeLab](https://scilifelab.se) [Bioinformatics Platform](https://nbis.se)
and its
[BioImage Informatics facility](https://www.scilifelab.se/facilities/bioimage-informatics/).
AIDA Data Hub also leads [BIGPICTURE](https://bigpicture.eu) infrastructure development.
AIDA is coordinated by the
[Center for Medical Image Science and Visualization](https://liu.se/cmiv) (CMIV)
at [Linköping University](https://liu.se).

We provide [Datasets](/datasets), [Data Sharing Policy](/sharing), and
[Services](/services), introduced in overview sections below.

## Datasets
We help researchers share their data with the world, making high-quality datasets
more [FAIR](/metrics#fair) and citeable using Digital Object Identifiers
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
So far <b>{% include human_friendly_filesize bytes=bytes %} </b> in
[{{ datasets }} datasets](/datasets) have been shared
({{ scans }} scans and {{ annotations }} annotations)
according to clinical [data acquisition priorities](/prio)


* [Browse datasets](/datasets)
* [Search](/search)
* [Metrics](/metrics)
* [API](/api)

## Data sharing policy
Everything is easier if you do it "the normal way".

The [AIDA data sharing policy](/sharing) is a comprehensive resource that
describes common practice in handling and sharing medical imaging data for
research in Sweden and similar countries. It provides concrete guidelines and
examples, and relates them to original sources in official law text.
Key insights have been published in
[Nature Scientific Data](https://www.nature.com/articles/s41597-020-00674-0)
(OpenAccess).

## Services
We offer leading edge [Services](/services) to researchers in Swedish medical imaging AI.
Examples include the [AIDA DGX-2 Service](/services#dgx-2) which is the currently
largest national GPU resource for processing sensitive personal data in Sweden.

* [AIDA DGX-2 Service](/services#dgx-2) - AI compute system for sensitive data.
* [AIDA Nextcloud](/services#nextcloud) - Research data sharing.
* [AIDA PACS](/services#pacs) - Production grade clinical picture archive and communication system.
* [AIDA Wiki](/services#wiki) - Documentation.
* [AIDA GitHub](/services#github) - Code collaboration.
* [AIDA Chat](/services#chat) - Support and discussion.

These services are offered to AIDA partners. Any Swedish organization active in
AI or medical imaging diagnostics can [join AIDA](/about/aida#join-aida).
