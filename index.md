---
image: "https://medtech4health.se/wp-content/uploads/2018/01/AIDA-banner-smal.jpg"
description: "Preview of the upcoming AIDA Data Hub website."
---
Analytic Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) is a
Swedish arena for research and innovation on artificial intelligence, AI, for
medical image analysis. Here, academia, healthcare and industry meet to
translate technical advances in AI technology into patient benefit in the form
of clinically useful tools.

The most important factor for training world-class AI is access to massive
amounts of high-quality training data.
The [AIDA data hub](https://medtech4health.se/aida/datahub/) is a place where researchers can
collaboratively gather, annotate, share and enrich large volumes of research
data for machine learning in medical imaging diagnostics.
This site facilitates [data sharing](../sharing/) by providing information on the datasets that
have been shared on the AIDA data hub, and makes them findable and citeable
using Digital Object Identifiers ([DOI](/about#what-are-dois-and-dataset-registers)).

{% assign total = 0 %}
{% for d in site.datasets %}{% if d.hidden %}{% continue  %}{% endif %}{% assign total = d.other.bytes | default: 0 | plus: total %}{% endfor %}
We currently share <b>{% include human_friendly_filesize bytes=total %} </b>
data and growing according to clinical [data acquisition priorities](/prio).

## Datasets shared on the AIDA data hub

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
