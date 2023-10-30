---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/bccc"
  name: "Basal cell carcinoma classification"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/bccc"
  author:
  - name: "Noora Neittaanmäki"
    "@id": "https://orcid.org/0000-0002-8733-5510"
    "@type": "Person"
  - name: "Kajsa Villiamsson"
    "@id": "https://orcid.org/0000-0002-9338-5098"
    "@type": "Person"
  - name: "Jan Siarov"
    "@id": "https://orcid.org/0000-0002-2013-3113"
    "@type": "Person"
  - name: "Filmon Yacob"
    "@id": "https://orcid.org/0000-0003-3283-5670"
    "@type": "Person"
  - name: "Juulia T Suvilehto"
    "@id": "https://orcid.org/0000-0003-3882-1069"
    "@type": "Person"
  - name: "Lisa Sjöblom"
    "@id": "https://orcid.org/0000-0003-3381-1232"
    "@type": "Person"
  - name: "Magnus Kjellberg"
    "@id": "https://orcid.org/0000-0002-6921-8257"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2023
  copyrightHolder:
  - name: "University of Gothenburg"
    url: "https://www.gu.se/"
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
  dateCreated: "2023-03-02"
  datePublished: "2023-03-17"
  dateModified: "2023-03-17"
  keywords: "Pathology, Whole slide imaging, Weakly annotated, Basal cell carcinoma, Skin cancer"
  version: "1.0.0"
  description: |
    Whole slide pathology images from excision specimens of cutaneous basal cell carcinomas (BCC) collected at the Department of Pathology at Sahlgrenska University Hospital, Sweden. The data set contains 1832 WSIs from 479 BCCs annotated on a slide level.
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
      "@id": "https://doi.org/10.1038/s41598-023-33863-z"
      name: "Yacob, F., Siarov, J., Villiamsson, K. et al. Weakly supervised detection and classification of basal cell carcinoma using graph-transformer on whole slide images. Sci Rep 13, 7555 (2023). https://doi.org/10.1038/s41598-023-33863-z"
other:
  shortName: "BCCC"
  origin: "Clinic"
  status: "Completed"
  annotation: |
    The data is annotated on a slide level into four aggressivity tumour subtypes: low aggressive Ia (nodular) and Ib (superficial) and more aggressive subtypes II (medium aggressive) and III (high aggressive). Of these, types Ia and Ib represent low risk and II and III high risk tumors according to WHO classilification of skin tumors (4th Edition 2018).
  countries-shared:
  - "SE"
  organ:
  - name: "Skin"
    sctid: 39937001 # SNOMED-CT
  age-span: "-"
  bytes: 6164491827525 #6.16 TB 
  numberOfScans: 1832
  numberOfAnnotations: 0
  resolution: "x40"
  modality:
  - "SM"
  scanner:
  - NanoZoomer S360 Hamamatsu
  stain: "H&E (hematoxylin and eosin)"
  phase:
  image: "/assets/images/10.23698/aida/bccc/sample1-thumbnail.jpeg"
  exampleImage:
  - title: "Sample image 1"
    url: "/assets/images/10.23698/aida/bccc/sample1.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/bccc/sample1-thumbnail.jpeg"
  - title: "Sample image 2"
    url: "/assets/images/10.23698/aida/bccc/sample2.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/bccc/sample2-thumbnail.jpeg"
  - title: "Sample image 3"
    url: "/assets/images/10.23698/aida/bccc/sample3.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/bccc/sample3-thumbnail.jpeg"
  - title: "Sample image 4"
    url: "/assets/images/10.23698/aida/bccc/sample4.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/bccc/sample4-thumbnail.jpeg"
---
## File formats
The dataset consists of two types of images:
Histopathological slides are stored as .ndpi (size per slide 1-5.5GB). 
Annotations are provided as .csv files (one for main data set, one for test set)

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
