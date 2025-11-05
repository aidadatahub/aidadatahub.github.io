---
hidden: 
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/anklefx"
  name: "Annotated radiographs of ankle fractures for research"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/anklefx"
  author:
  - name: "Jakub Olczak"
    #"@id": "https://orcid.org/0000-0002-8080-5815"
    "@type": "Person"
  - name: "Filip Emilson"
    #"@id": "https://orcid.org/0000-0003-0341-0227"
    "@type": "Person"
  - name: "Ali Razavian"
    #"@id": "https://orcid.org/0000-0002-8080-5815"
    "@type": "Person"
  - name: "Tone Antonsson"
    #"@id": "https://orcid.org/0000-0003-0341-0227"
    "@type": "Person"
  - name: "Andreas Stark"
    #"@id": "https://orcid.org/0000-0003-0341-0227"
    "@type": "Person"
  - name: "Max Gordon"
    "@id": "https://orcid.org/0000-0002-8080-5815"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2021
  copyrightHolder:
  - name: "Karolinska Institutet"
    url: "https://ki.se/"
    "@type": "Organization"
  - name: "Max Gordon"
    "@id": "https://orcid.org/0000-0002-8080-5815"
    "@type": "Person"
  provider:
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  - name: "Max Gordon"
    email: "max.gordon@ki.se"
    "@id": "https://orcid.org/0000-0002-8080-5815"
    "@type": "Person"
  dateCreated: "2024-11-29"
  datePublished: "2024-11-29"
  dateModified: "2024-11-29"
  keywords: "Ankle fractures, Radiology, Annotations, Medical imaging, AO/OTA"
  version: "1.0.0"
  description: |
    The Ankle Fracture dataset includes radiological images for diagnosing and evaluating ankle fractures. The dataset focuses on X-ray imaging, providing annotations for fracture identification, classification, and severity grading.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/anklefx#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/anklefx#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.1186/s12891-024-07884-2"
    name: "Olczak J, Prijs J, IJpma F, Wallin F, Akbarian E, Doornberg J, et al. External validation of an artificial intelligence multi-label deep learning model capable of ankle fracture classification. BMC Musculoskelet Disord. 2024 Oct 4;25(1):788."
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.1080/17453674.2020.1837420"
    name: "Olczak J, Emilson F, Razavian A, Antonsson T, Stark A, Gordon M. Ankle fracture classification using deep learning: automating detailed AO Foundation/Orthopedic Trauma Association (AO/OTA) 2018 malleolar fracture identification reaches a high degree of correct classification. Acta Orthopaedica. 2021 Jan 2;92(1):102–8."
other:
  shortName: "ANKLEFX"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    Annotations are manually created and validated by clinical experts, including fracture classification, severity grading, and localization markers on X-rays.
  countries-shared:
    - "SE"
  organ:
  - name: "Ankle"
    sctid: 344001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=344001&edition=uk-edition&release=v20240925&server=https://sctuat.dataproducts.nhs.uk/sct-browser-api/snomed&langRefset=999000681000001101,999001251000000103
  age-span: "15+"
  bytes: 3224194682
  numberOfScans: 1751
  numberOfAnnotations: 400
  resolution: ""
  modality:
  - "CR"
  scanner:
  stain:
  phase:
  image: "/assets/images/10.23698/aida/anklefx/img1_thumbnail.png"
  exampleImage:
  - title: ""
    url: "/assets/images/10.23698/aida/anklefx/img1.png"
    thumbnail-url: "/assets/images/10.23698/aida/anklefx/img1_thumbnail.png"
  - title: ""
    url: "/assets/images/10.23698/aida/anklefx/img2.png"
    thumbnail-url: "/assets/images/10.23698/aida/anklefx/img2_thumbnail.png"
---
## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact AIDA for terms of access.

{% include rems-link.md %}

### AIDA BY license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute this data within Analytic
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the
purpose of medical diagnostics research with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data cite the
following works:

{{ page.datacite.author | map: "name" | array_to_sentence_string }}
({{ page.datacite.datePublished | date: "%Y" }})
{{ page.datacite.name }}
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }}).
{% for c in page.datacite.citation %}
  [{{ c.name }}]({{c["@id"]}})

{% endfor %}

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
