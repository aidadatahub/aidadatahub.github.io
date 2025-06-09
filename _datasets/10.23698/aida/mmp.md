---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/mmp"
  name: "Melanoma metastatic prediction"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/mmp"
  author:
  - name: "Noora Neittaanmäki"
    "@id": "https://orcid.org/0000-0002-8733-5510"
    "@type": "Person"
  - name: "Filip Dahlen"
    "@id": ""
    "@type": "Person"
  - name: "Ivan Shjuski"
    "@id": ""
    "@type": "Person"
  - name: "Filmon Yacob"
    "@id": "https://orcid.org/0000-0003-3283-5670"
    "@type": "Person"
  - name: "Ida Häggström"
    "@id": ""
    "@type": "Person"
  - name: "Ilkka Polonen"
    "@id": ""
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2025
  copyrightHolder:
  - name: "Sahlgrenska University hospital"
    url: "https://www.sahlgrenska.se//"
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
  datePublished: "2025-06-09"
  dateModified: "2025-06-09"
  keywords: "melanoma, cutaneous melanoma, staging, metastatic prediction "
  version: "1.0.0"
  description: |
    Whole slide pathology images from excision specimens of cutaneous melanoma) collected at the Departments of Pathology in the Region Västra Götaland, Sweden. The dataset contains 435 WSIs representing 435 excised primary cutaneous melanomas. Additional information describing the histological features in form of text embeddings are available as a separate file. described in an additional file.  

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
      "@id": ""
      name: ""
other:
  shortName: "MMP"
  origin: "Clinical"
  status: "Completed"
  annotation: "[INFORMATION NEEDED]"
  countries-shared:
    -
  organ:
  - name: "Skin"
    sctid: 39937001 # SNOMED-CT
  age-span: "2016-2024"
  bytes: 0  #6.16 TB, 6164491827525 B before the last upload
  numberOfScans: 435
  numberOfAnnotations: 435
  resolution: "x40"
  modality:
  - "SM"
  scanner:
  - NanoZoomer S360 Hamamatsu
  stain: "H&E (hematoxylin and eosin)"
  phase:
  image: "/assets/images/10.23698/aida/mmp/sample1-thumbnail.jpeg"
  exampleImage:
  - title: "Sample image 1"
    url: "/assets/images/10.23698/aida/mmp/sample1.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/mmp/sample1-thumbnail.jpeg"
  # - title: "Sample image 2"
  #   url: "/assets/images/10.23698/aida/bccc/sample2.jpeg"
  #   thumbnail-url: "/assets/images/10.23698/aida/bccc/sample2-thumbnail.jpeg"
  # - title: "Sample image 3"
  #   url: "/assets/images/10.23698/aida/bccc/sample3.jpeg"
  #   thumbnail-url: "/assets/images/10.23698/aida/bccc/sample3-thumbnail.jpeg"
  # - title: "Sample image 4"
  #   url: "/assets/images/10.23698/aida/bccc/sample4.jpeg"
  #   thumbnail-url: "/assets/images/10.23698/aida/bccc/sample4-thumbnail.jpeg"
---

## File formats
Histopathological slides are stored as .ndpi (size per slide 1-5.5GB).
[INFORMATION NEEDED]

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
