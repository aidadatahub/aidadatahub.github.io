---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/ctpa"
  name: "Computed Tomography Pulmonary Angiography (CTPA) data"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpa"
  author:
  - name: "Tobias Sjöblom"
    "@id": "https://orcid.org/0000-0001-6668-4140"
    "@type": "Person"
  - name: "Nataša Sladoje"
    "@id": "https://orcid.org/0000-0002-6041-6310"
    "@type": "Person"
  - name: "Ali Teymur Kahraman"
    "@id": "https://orcid.org/0000-0001-7488-6105"
    "@type": "Person"
  - name: "Dimitris Toumpanakis"
    #"@id": "" # FIXME: missing info
    "@type": "Person"
  - name: "Tomas Fröding"
    "@id": "https://orcid.org/0000-0002-4053-4301"
    "@type": "Person"        
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2019
  copyrightHolder:
  - name: "Uppsala University"
    url: "https://uu.se/"
    "@type": "Organization"
  - name: "Tobias Sjöblom"
    "@id": "https://orcid.org/0000-0001-6668-4140"
    "@type": "Person"
  - name: "Nyköpings Lasarett"
    url: "Axial CTPA image showing annotated pulmonary emboli"
    "@type": "Organization"
  - name: "Tomas Fröding"
    "@id": "https://orcid.org/0000-0002-4053-4301"
    "@type": "Person"        
  provider:
  - name: "AIDA Data Hub"
    email: "aida@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  - name: "Tomas Fröding"
    email: "tomaskjfroding@gmail.com"
    "@id": "https://orcid.org/0000-0002-4053-4301"
    "@type": "Person"        
  dateCreated: "2019-04-08"
  datePublished: "2019-04-08"
  dateModified: "2019-04-00"
  keywords: "Radiology, Computed tomography, Thorax, Pulmonary embolism, Annotated"
  version: "1.0"
  description: |
    30 clinical routine CTPA examinations, performed on a Philips Brilliance 64
    CT or GE Lightspeed VCT. 14317 axial images (1 or 0,625mm) plus additional
    reformats. 5 of the CTPAs are positive for pulmonary embolism and have all
    the emboli carefully delineated by an experienced radiologist.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpa#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY CA license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpa#aida-by-ca-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution and co-authorship."
  citation:
    #- "@type": "CreativeWork"
    #  "@id": "https://doi.org/..."
    #  name: "Title of paper goes here"
other:
  shortName: "CTPA"
  status: "Ongoing"
  annotation: |
    All pulmonary emboli have been delineated by an experienced radiologist - in
    an image by image process (in axial view 1 or 0,625mm images) using MITK
    Workbench. 1 283 annotations were made, in a total of 38 emboli.
  countries-shared:
    - "BE"
    - "SE"
    - "IN"
    - "JO"
    - "LK"
    - "US"
  organ:
  - name: "Lung"
    sctid: 39607008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "45-93"
  bytes: 4500000000
  numberOfScans: 30
  numberOfAnnotations: 1283
  resolution:
  modality:
  - "CT"
  scanner:
  - "Philips Brilliance 64 CT"
  - "GE Lightspeed VCT"
  stain:
  phase: Contrast enhanced, pulmonary arterial phase
  image: "/assets/images/10.23698/aida/ctpa/axial-ctpa-annotated-thumbnail.jpg"
  exampleImage:
  - title: "3D volume rendered image."
    url: "/assets/images/10.23698/aida/ctpa/3d.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/ctpa/3d-thumbnail.jpg"
  - title: "Axial CTPA image showing pulmonary emboli."
    url: "/assets/images/10.23698/aida/ctpa/axial-ctpa.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/ctpa/axial-ctpa-thumbnail.jpg"
  - title: "Axial CTPA image with annotated pulmonary emboli."
    url: "/assets/images/10.23698/aida/ctpa/axial-ctpa-annotated.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/ctpa/axial-ctpa-annotated-thumbnail.jpg"
---
## File formats
DICOM. Please see our help pages for some examples of
[working with DICOM](/about/help/#working-with-dicom).

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact AIDA for terms of access.

{% include access-request-blurb.md
  agreement_template_url="https://docs.google.com/document/d/1a020Mukn9cjJF88vEYW9OUUDIc2E3dHbSBQi_jb8Yd0"
  coauthorship="yes" %}

### AIDA BY CA license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute this data within Analytic
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the
purpose of medical diagnostics research with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data include
the authors of this dataset in the author list and cite the following works:

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
