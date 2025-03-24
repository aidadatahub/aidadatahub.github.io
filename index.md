---
description: Data and services for innovation in data driven precision health
---
We are a national e-infrastructure for research and clinical innovation in data
driven precision health, with a base in multi-modal diagnostics and medical
imaging AI. We offer data, services, compute and storage resources, and advanced
support to researchers, industry, and caregivers of national significance.

Hosted by the [Linköping University](https://liu.se)
Center for Medical Image Science and Visualization ([CMIV](https://liu.se/cmiv)).
Part of [SciLifeLab](https://scilifelab.se) Bioinformatics Platform ([NBIS](https://nbis.se)).
Reporting to the Analytic Imaging Diagnostics Arena ([AIDA](/about/aida)) Steering Group
and [SciLifeLab](https://scilifelab.se) Board.

Learn more: [About AIDA Data Hub](policy/definition)

<style>
.engagement-cards {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  padding-left: 0px;
}
.engagement-cards li {
  text-align: center;
  flex: 0 0 50%;
}
@media (min-width: 400px) {
  .engagement-cards li {
    flex: 0 0 33.33%;
  }
}
@media (min-width: 600px) {
  .engagement-cards li {
    flex: 0 0 25%;
  }
}
.engagement-cards li {
  display: flex;
  justify-content: center;
  align-items: flex-end;
}
.engagement-cards li img {
  width: 60%;
  height: 7em;
  object-fit: contain
}
</style>
<ul class="engagement-cards">
{% assign engagements = site.engagements | sort: "prio" %}
{% for e in engagements %}
{% unless e.prio %}{% continue %}{% endunless %}
<li title="{{ e.title }}"><a href="{{ e.url }}"><img src="{{ e.logo }}"></a></li>
{% endfor %}
</ul>

[More engagements...](about/engagements)


## News
{% include news-list.html highlights=true %}

[More news...](news)

## Events
{% include event-list.html id="upcoming" events=site.events highlights=true %}

[More events...](events)

## Data
We help researchers share their data with the world, making high-quality
datasets more [FAIR](/metrics#fair) and citeable using digital object identifiers
([DOI](/about#what-are-dois-and-dataset-registers)). We also fund work with
extracting and enriching prioritized data for research.

<a class="button" href="data">Data &raquo;</a>

## Data Science Platfom
We offer a home for your research. We provide computable long term primary storage, supporting advanced usage patterns, close to flagship compute, suitable for sensitive data, with customizable security.

<a class="button" href="data-science-platform">Data Science Platform &raquo;</a>

## Services
We provide services for research and clinical innovation in data driven precision health, with a base in multi-modal diagnostics and medical imaging AI.

<a class="button" href="services">Services &raquo;</a>

## Support

We offer advanced support and training in medical imaging AI research, data sharing and policy, and system design for sensitive data.

<a class="button" href="support">Support &raquo;</a>
