---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/melmet"
  name: "Melanoma metastatic prediction dataset"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/melmet"
  author:
  - name: "Noora Neittaanmäki"
    "@id": "https://orcid.org/0000-0002-8733-5510"
    "@type": "Person"
  - name: "Filip Dahlen"
    "@id": "https://orcid.org/0009-0000-8849-1550"
    "@type": "Person"
  - name: "Ivan Shjuski"
    "@id": ""
    "@type": "Person"
  - name: "Filmon Yacob"
    "@id": "https://orcid.org/0000-0003-3283-5670"
    "@type": "Person"
  - name: "Ida Häggström"
    "@id": "https://orcid.org/0000-0001-9178-6683"
    "@type": "Person"
  - name: "Ilkka Polonen"
    "@id": "https://orcid.org/0000-0002-5129-7364"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2025
  copyrightHolder:
  - name: "Sahlgrenska University hospital"
    url: "https://www.sahlgrenska.se//"
    "@type": "Organization"
  - name: "University of Gothenburg"
    url: "https://www.gu.se//"
    "@type": "Organization"
  - name: "Noora Neittaanmäki"
    "@id": "https://orcid.org/0000-0002-8733-5510"
    "@type": "Person"
  provider:
  - name: "Noora Neittaanmäki"
    email: "noora.neittaanmaki@vgregion.se"
    "@id": "https://orcid.org/0000-0002-8733-5510"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2025-06-09"
  datePublished: "2026-03-24"
  dateModified: "2026-03-24"
  keywords: "Pathology, Whole slide imaging, Weakly annotated, Skin cancer, Melanoma, Cutaneous melanoma, Staging, Metastatic prediction, WSI"
  version: "1.0.0"
  description: |
    Whole slide pathology images from excision specimens of primary cutaneous melanoma collected at the Departments of Pathology in the Region Västra Götaland, Sweden. The dataset contains 426 WSIs representing 426 excised primary cutaneous melanomas (249 metastatic and 177 non-metastatic). Additional information describing the histological features as text embeddings and information weather the tumor have metastasized is available as separate Excel files.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/bccc#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research. 
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/bccc#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution and co-authorship."
  citation:
     - "@type": "CreativeWork"
       "@id": "https://doi.org/10.1038/s41598-026-45588-w"
       name: "Dahlén F, Shujski I, Yacob F, Häggström I, Jovanovic J, Dudina O, Pölönen I, Neittaanmäki N. Early detection of metastatic risk in primary cutaneous melanoma using weakly supervised learning. Sci Rep. 2026 Apr 1;16(1):11234. doi: 10.1038/s41598-026-45588-w. PMID: 41922451; PMCID: PMC13046822."
other:
  shortName: "MelMet"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    The WSIs are weakly annotated on a slide level to metastatic 
    (1) or non-metastatic (0). The information is available in the 
    Excel files.
  countries-shared:
   []
  organ:
  - name: "Skin"
    sctid: 39937001 # SNOMED-CT
  age-span: "2016-2024"
  bytes: 1450000000000  #6.16 TB, 6164491827525 B before the last upload
  numberOfScans: 426
  numberOfAnnotations: 426
  resolution: "x40"
  modality:
  - "SM"
  scanner:
  - NanoZoomer S360 Hamamatsu
  stain: "H&E (hematoxylin and eosin)"
  phase:
  image: "/assets/images/10.23698/aida/melmet/data-browser-thumbnail.jpg"
  exampleImage:
  - title: "Sample image 1"
    url: "/assets/images/10.23698/aida/melmet/sample-figure-1.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/melmet/sample-figure-1-thumbnail.jpg"
  - title: "Sample image 2"
    url: "/assets/images/10.23698/aida/melmet/sample-figure-2.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/melmet/sample-figure-2-thumbnail.jpg"
  - title: "Sample image 3"
    url: "/assets/images/10.23698/aida/melmet/sample-figure-3.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/melmet/sample-figure-3-thumbnail.jpg"
---

## File formats
Histopathological slides are stored as .ndpi (size per slide 1.3-5.5GB).

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact the dataset provider for terms of access.

{% include access-request-blurb.md %}

### AIDA BY license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute this data within Analytic
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the purpose
of medical diagnostics research with or without fee is hereby granted, provided that
the above copyright notice and this permission notice appear in all copies, and that
publications resulting from the use of this data cite the following works:

{{ page.datacite.author | map: "name" | array_to_sentence_string }}
({{ page.datacite.datePublished | date: "%Y" }})
{{ page.datacite.name }}
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }})

{% for c in page.datacite.citation %}
  {% if c["@id"] %}[{{ c.name }}]({{c["@id"]}})
  {% else %}
  <p>{{ c.name }}</p>
  {% endif %}
{% endfor %}

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
