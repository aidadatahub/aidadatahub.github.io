---
title: "Metrics"
description: "<a href='/'>AIDA Data Hub</a> sharing in numbers."
---
{% capture ignored %}
  {% assign totn = 0 %}
  {% assign totb = 0 %}
  {% assign tots = 0 %}
  {% assign tota = 0 %}
  {% assign annn = 0 %}
  {% assign annb = 0 %}
  {% assign anns = 0 %}
  {% assign anna = 0 %}
  {% assign patn = 0 %}
  {% assign patb = 0 %}
  {% assign pats = 0 %}
  {% assign pata = 0 %}
  {% assign radn = 0 %}
  {% assign radb = 0 %}
  {% assign rads = 0 %}
  {% assign rada = 0 %}
  {% assign stotn = 0 %}
  {% assign stotb = 0 %}
  {% assign stots = 0 %}
  {% assign stota = 0 %}
  {% assign sannn = 0 %}
  {% assign sannb = 0 %}
  {% assign sanns = 0 %}
  {% assign sanna = 0 %}
  {% assign spatn = 0 %}
  {% assign spatb = 0 %}
  {% assign spats = 0 %}
  {% assign spata = 0 %}
  {% assign sradn = 0 %}
  {% assign sradb = 0 %}
  {% assign srads = 0 %}
  {% assign srada = 0 %}
  {% assign country-codes = '' | split: '' %}
  {% assign modalities = '' | split: '' %}
  {% assign organs = '' | split: '' %}
  

  {% for d in site.datasets %}
    {% if d.hidden %}{% continue  %}{% endif %}
    {% if d.synthetic %}{% continue  %}{% endif %}
    {% assign kw = d.datacite.keywords | split:", " %}
    {% assign b = d.other.bytes | default: 0 %}
    {% assign s = d.other.numberOfScans | default: 0 %}
    {% assign a = d.other.numberOfAnnotations | default: 0 %}
    {% assign totn = totn | plus: 1 %}
    {% assign totb = totb | plus: b %}
    {% assign tots = tots | plus: s %}
    {% assign tota = tota | plus: a %}
    {% if kw contains 'Annotated' %}
      {% assign annn = annn | plus: 1 %}
      {% assign annb = annb | plus: b %}
      {% assign anns = anns | plus: s %}
      {% assign anna = anna | plus: a %}
    {% endif %}
    {% if kw contains 'Pathology' %}
      {% assign patn = patn | plus: 1 %}
      {% assign patb = patb | plus: b %}
      {% assign pats = pats | plus: s %}
      {% assign pata = pata | plus: a %}
    {% endif %}
    {% if kw contains 'Radiology' %}
      {% assign radn = radn | plus: 1 %}
      {% assign radb = radb | plus: b %}
      {% assign rads = rads | plus: s %}
      {% assign rada = rada | plus: a %}
    {% endif %}
    {% assign country-codes = country-codes | concat: d.other.countries-shared %}
    {% assign modalities = modalities | concat: d.other.modality %}
    {% assign o = d.other.organ | map: "name" %}
    {% assign organs = organs | concat: o %}
  {% endfor %}
  {% for d in site.datasets %}
    {% if d.hidden %}{% continue  %}{% endif %}
    {% if d.synthetic %}
    {% assign skw = d.datacite.keywords | split:", " %}
    {% assign sb = d.other.bytes | default: 0 %}
    {% assign ss = d.other.numberOfScans | default: 0 %}
    {% assign sa = d.other.numberOfAnnotations | default: 0 %}
    {% assign stotn = stotn | plus: 1 %}
    {% assign stotb = stotb | plus: sb %}
    {% assign stots = stots | plus: ss %}
    {% assign stota = stota | plus: sa %}


    {% if skw contains 'Synthetic' and skw contains 'Annotated' %}
      {% assign sannn = sannn | plus: 1 %}
      {% assign sannb = sannb | plus: sb %}
      {% assign sanns = sanns | plus: ss %}
      {% assign sanna = sanna | plus: sa %}
    {% endif %}
    {% if skw contains 'Synthetic' and skw contains 'Pathology' %}
      {% assign sradn = sradn | plus: 1 %}
      {% assign sradb = sradb | plus: sb %}
      {% assign srads = srads | plus: ss %}
      {% assign srada = srada | plus: sa %}
    {% endif %}
    {% if skw contains 'Synthetic' and skw contains 'Radiology' %}
      {% assign sradn = sradn | plus: 1 %}
      {% assign sradb = sradb | plus: sb %}
      {% assign srads = srads | plus: ss %}
      {% assign srada = srada | plus: sa %}
    {% endif %}
    {% assign country-codes = country-codes | concat: d.other.countries-shared %}
    {% assign modalities = modalities | concat: d.other.modality %}
    {% assign o = d.other.organ | map: "name" %}
    {% assign organs = organs | concat: o %}
    {% endif %}
  {% endfor %}
  {% assign modalities = modalities | uniq | sort %}
  {% assign organs = organs | uniq | sort %}
  {% assign countries = '' | split: '' %}
  {% for c in country-codes %}{% assign countries = countries | push: site.data.countrynames[c] %}{% endfor %}
  {% assign countries = countries | uniq | sort %}
{% endcapture %}
## Countries
{% include world-map.svg %}

AIDA Data Hub has facilitated [legal and ethical data sharing](../sharing/overview/#share-outside-of-aida) with researchers in {{ countries | size }} countries:
{{ countries | array_to_sentence_string: "and" }}.

## Datasets
<table class="info-box">
  <tr><th></th><th>Datasets</th><th>Scans</th><th>Annotations</th><th>Size</th></tr>
  <tr>
    <th>Total</th>
    <td>{{ totn }}</td>
    <td>{{ tots }}</td>
    <td>{{ tota }}</td>
    <td>{% include human_friendly_filesize bytes=totb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Annotated">Annotated</a></td>
    <td>{{ annn }}</td>
    <td>{{ anns }}</td>
    <td>{{ anna }}</td>
    <td>{% include human_friendly_filesize bytes=annb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Subject:Pathology">Pathology</a></td>
    <td>{{ patn }}</td>
    <td>{{ pats }}</td>
    <td>{{ pata }}</td>
    <td>{% include human_friendly_filesize bytes=patb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Subject:Radiology">Radiology</a></td>
    <td>{{ radn }}</td>
    <td>{{ rads }}</td>
    <td>{{ rada }}</td>
    <td>{% include human_friendly_filesize bytes=radb %}</td>
  </tr>
</table>

### Synthetic Datasets
<p><b>  
These datasets contain synthetic data created by a generative AI model.
</b></p>
<table class="info-box">
  <tr><th></th><th>Datasets</th><th>Scans</th><th>Annotations</th><th>Size</th></tr>
  <tr>
    <th>Total</th>
    <td>{{ stotn }}</td>
    <td>{{ stots }}</td>
    <td>{{ stota }}</td>
    <td>{% include human_friendly_filesize bytes=stotb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Annotated">Annotated</a></td>
    <td>{{ sannn }}</td>
    <td>{{ sanns }}</td>
    <td>{{ sanna }}</td>
    <td>{% include human_friendly_filesize bytes=sannb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Subject:Pathology">Pathology</a></td>
    <td>{{ spatn }}</td>
    <td>{{ spats }}</td>
    <td>{{ spata }}</td>
    <td>{% include human_friendly_filesize bytes=spatb %}</td>
  </tr>
  <tr>
    <td><a href="/search/?q=Subject:Radiology">Radiology</a></td>
    <td>{{ sradn }}</td>
    <td>{{ srads }}</td>
    <td>{{ srada }}</td>
    <td>{% include human_friendly_filesize bytes=sradb %}</td>
  </tr>
</table>

## Modalities
Modalities: {{ modalities | size }}

Please click the names below to do a simple text search for matching datasets:

<ul>
{% for m in modalities %}
  <li><a href="/search/?q=Modality:{{ m }}">{{ m }}: {{ site.data.modalitynames[m] }}</a></li>
{% endfor %}
</ul>

## Organs
Organs: {{ organs | size }} (unique names)

Please click the names below to do a simple text search for matching datasets:

<ul>
{% for o in organs %}
  <li><a href="/search/?q=Organ:{{ o }}">{{ o }}</a></li>
{% endfor %}
</ul>

## FAIR
In 2020, [EOSC-Nordic](https://www.eosc-nordic.eu/) carried out an independent evaluation of [FAIR](https://www.go-fair.org/fair-principles/) readiness among 98 data repositories in the Nordics (results to be published). The AIDA Data Hub was included in this evaluation, and was shown to be among the 12% best scoring repositories in in the sample.

Draft report: [An assessment of FAIR-uptake among regional digital repositories](https://doi.org/10.5281/zenodo.4045402)  
Follow-up: [EOSC-Nordic WP4 FAIR assessments result (Dec 2020)](https://docs.google.com/spreadsheets/d/1MBTMXb5SIeaBKiyEzlmgJtQtxNS1zZTgTvTk9A2vgdc/edit#gid=0).

AIDA Data Hub is also findable through [re3data.org](https://www.re3data.org/repository/r3d100013031)

<a id="badge" href="https://www.re3data.org/repository/r3d100013031">
  <img src="/assets/icons/badges/re3data-large.png" style="margin-bottom: -2em;">
</a>
