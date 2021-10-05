---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/ctskull"
  name: "CT of normal skulls in three categories (Female, Male, Mixed)"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/ctskull"
  author:
  - name: "Einar Heiberg"
    "@id": "https://orcid.org/0000-0003-2848-3326"
    "@type": "Person"
  - name: "Finn Lennartsson"
    "@id": "https://orcid.org/0000-0003-1110-8896"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2021
  copyrightHolder:
  - name: "Region Skåne"
    url: "https://www.skane.se/"
    "@type": "Organization"
  - name: "Einar Heiberg"
    "@id": "https://orcid.org/0000-0003-2848-3326"
    "@type": "Person"
  provider:
  - name: "Einar Heiberg"
    email: "einar.heiberg@med.lu.se"
    "@id": "https://orcid.org/0000-0003-2848-3326"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2021-09-14"
  datePublished: "2021-09-14"
  dateModified: "2021-09-14"
  keywords: "Radiology, Skull, CT, Computed tomography, Face blur, Male, Female"
  version: "0.1"
  description: |
    The data contains 300 skulls. The data is divided into three groups with 100
    scans in three categories Females, Males, and Mix. The purpose of the
    project was to generate a machine learning algorithm to be able reconstruct
    missing parts of the skull for cranioplasty. Each scan was verified to
    ensure normal skull shape. To ensure data privacy the faces have
    been deblurred with an in-house developed algorithm.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctskull#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in research or education.
  - name: "AIDA license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctskull#aida-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA."
  citation:
other:
  shortName: "ctskull"
  status: "Completed"
  annotation: |
    There are no annotations performed on the data set as segmentation of the
    skull shape is trivial by use of thresholding. All annotation in the
    project was fully automated.
  countries-shared:
  - "SE"
  organ:
  - name: "Skull"
    sctid: 89546000 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "19-100" # Born 1920-1999, scanned 2018-2020.
  bytes: 34427096021 # 32 GiB (zipped) ca 48GB (unzipped)
  numberOfScans: 300
  numberOfAnnotations: 0
  resolution: "Typically 0.5 isotropic"
  modality:
  - "CT"
  scanner:
  stain:
  phase:
  image:
  exampleImage:
  - title: "Sample image."
    url: "/assets/images/10.23698/aida/ctskull/sample-image.png"
    thumbnail-url: "/assets/images/10.23698/aida/ctskull/sample-image-thumbnail.png"
---
## File formats
Each study is zipped into one file. All files are stored in DICOM format.

## License
### Controlled access
Free for use in research or education.
Please contact the dataset provider for terms of access.

{% include access-request-blurb.md email_template="access-request-email-research-or-education.md" %}

### AIDA BY license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute the data within AIDA
(Analytic Imaging Diagnostics Arena https://medtech4health.se/aida) for the
purpose of research or education with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data cite the
following works:

{{ page.datacite.author | map: "name" | array_to_sentence_string }}
({{ page.datacite.datePublished | date: "%Y" }})
{{ page.datacite.name }}
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }}).

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
