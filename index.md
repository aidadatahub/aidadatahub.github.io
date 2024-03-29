---
---
We offer [Data Sharing](/datasets), [Policy](/sharing), [Support](/support) and
[Services](/services) for researchers in Swedish medical imaging AI.

AIDA Data Hub is part of the Analytic Imaging Diagnostics Arena
([AIDA](/about/aida)) and of the [SciLifeLab](https://scilifelab.se)
Bioinformatics Platform ([NBIS](https://nbis.se)).
AIDA Data Hub also leads [Bigpicture](https://bigpicture.eu) infrastructure
development. AIDA is coordinated by the Center for Medical Image Science and
Visualization ([CMIV](https://liu.se/cmiv)) at [Linköping
University](https://liu.se). AIDA Data Hub is funded by
[SciLifeLab](https://scilifelab.se).


<div class = "scilife_nbis_div  columns">
<div class = "column text-left" ><a href="https://nbis.se/"><img alt="Nbis_logo" id="nbis_logo" src="/assets/images/nbislogo-green-aqua.svg"/></a></div>
<div class = "column text-center" ><a href ="https://datahub.aida.scilifelab.se/"><img alt="aida_logo" id = "aida_logo" src="/assets/icons/aida-icon.png" /></a> </div>
<div class = "column text-right" ><a href="https://scilifelab.se/"><img alt="SciLifeLab logo" id="scilife_logo" src="/assets/images/scilifelab-logo.png"  /></a> </div>
</div>

## AIDA Dataset Register
Using the [AIDA Dataset register](/datasets) we help researchers share their
data with the world, making high-quality datasets more [FAIR](/metrics#fair)
and citeable using Digital Object Identifiers
([DOI](/about#what-are-dois-and-dataset-registers)).

We can also fund work with extracting [prioritized data](/prio) for sharing on
the AIDA Data Hub.

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
have been shared, in {{ scans }} scans with {{ annotations }} annotations in {{ datasets }} datasets.


You can [Browse](/datasets) or [Search](/search) for datasets, view
[Metrics](/metrics), or use our [API](/api).

## AIDA Data Sharing Policy
Everything is easier if you do it "the normal way".

The [AIDA data sharing policy](/sharing) is a comprehensive resource that
describes not only data sharing processes in AIDA, but also common practice in
handling and sharing medical imaging data for research in Sweden and similar
countries. It provides concrete guidelines and examples, and relates them to
original sources in official law text. Key insights have been published in
[Nature Scientific Data](https://www.nature.com/articles/s41597-020-00674-0)
(OpenAccess).

## AIDA Support

We offer  [Advanced support and training](/support) to the AIDA community, in medical imaging
diagnostics AI research and innovation. Areas include [Research support expertise](/support#research-support-expertise), [Data sharing and policy](/support#data-sharing-policy), and [System design](/support#system-design) for sensitive data.
The goal is to accelerate research within medical imaging diagnostics by supporting researchers from the early phases such as project scoping and modeling
to later practical stages such as debugging, optimizing and deploying AI solutions.


## AIDA Services
We offer leading edge [Services](/services) to researchers in Swedish medical imaging AI.

* [AIDA DGX-2 Service](/services#dgx-2) - Compute system for AI training on sensitive personal data.
* [AIDA Nextcloud](/services#nextcloud) - Research data sharing.
* [AIDA PACS](/services#pacs) - Production grade clinical picture archive and communication system.
* [AIDA Wiki](/services#wiki) - Documentation.
* [AIDA GitHub](/services#github) - Code collaboration.
* [AIDA Chat](/services#chat) - Support and discussion.

These services are offered to AIDA partners. Any Swedish organization active in
AI or medical imaging diagnostics can [join AIDA](/about/aida#join).
