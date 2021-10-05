---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/affai"
  name: "X-ray examinations of atypical femoral fractures"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/affai"
  author:
  - name: "Jörg Schilcher"
    "@id": "https://orcid.org/0000-0003-0677-9265"
    "@type": "Person"
  - name: "Chunliang Wang"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2021
  copyrightHolder:
  - name: "Linköping University"
    url: "https://liu.se/"
    "@type": "Organization"
  - name: "Jörg Schilcher"
    "@id": "https://orcid.org/0000-0003-0677-9265"
    "@type": "Person"
  - name: "KTH"
    url: "https://kth.se/"
    "@type": "Organization"
  - name: "Chunliang Wang"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  provider:
  - name: "Jörg Schilcher"
    email: "jorg.schilcher@liu.se"
    "@id": "https://orcid.org/0000-0003-0677-9265"
    "@type": "Person"
  - name: "Chunliang Wang"
    email: "chunwan@kth.se"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2021-03-04"
  datePublished: "2021-03-23"
  dateModified: "2021-03-23"
  keywords: "Radiology, X-ray, Annotated, Femur, AFF, Atypical femoral fracture"
  version: "1.0"
  description: |
    Atypical femoral fracture is a well-documented adverse reaction to
    bisphosphonate treatment, but may also have other causes. This dataset contains 433
    radiographs from 149 patients with complete AFF, and 549 radiographs from
    224 patients with normal femur fractures. There are no diagnoses of cancer,
    to reduce the risk of confounding by indication.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/affai#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/affai#aida-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
#  - "@type": "" # In review.
#    "@id": ""
#    name: ""
other:
  shortName: "AFFAI"
  status: "Completed"
  annotation: |
    Atypical femoral fractures have a characteristic fracture pattern with the
    fracture running perpendicular  to the longitudinal axis of the femur. The
    periosteal surface shows a focal cortical thickening (attempts to heal the
    fracture) and the fracture extends medially through unaffected cortical bone
    with a typical medial spike. These three radiographic signs are very typical
    findings for all kinds of stress fractures in cortical bone.

    Each case including radiographs was evaluated by at least one senior
    consultant in orthopedics, and categorized into atypical femoral fractures
    (AFF) and normal fractures of the femoral shaft (NFF).
  countries-shared:
  - "SE"
  organ:
  - name: "Femur"
    sctid: 71341001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "" # FIXME: missing data
  bytes: 3881258996 # zip compressed 3.9 GB (3.7 GiB).
  numberOfScans: 981
  numberOfAnnotations: 981
  resolution:
  modality:
  - "CR"
  scanner:
  stain:
  phase:
  image:
  exampleImage:
  - title: "Femur fracture radiograph with an AI generated heatmap indicating probable presence and location of an Atypical Femur Fracture."
    url: "/assets/images/10.23698/aida/affai/aff-heatmap.png"
    thumbnail-url: "/assets/images/10.23698/aida/affai/aff-heatmap-thumbnail.png"
---
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
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }}).

Paper 1 (in review).

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
