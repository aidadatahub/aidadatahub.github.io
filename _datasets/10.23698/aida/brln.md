---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/brln"
  name: "Axillary lymph nodes in breast cancer cases"
  about: "Pathology"
  url: "https://datasets.aida.medtech4health.se/10.23698/aida/brln"
  author:
  - name: "Sofia Jarkman"
    #"@id": # FIXME: missing info
    "@type": "Person"
  - name: "Martin Lindvall"
    "@id": "https://orcid.org/0000-0002-7014-8874"
    "@type": "Person"
  - name: "Joel Hedlund"
    "@id": "https://orcid.org/0000-0001-6443-3604"
    "@type": "Person"
  - name: "Darren Treanor"
    "@id": "https://orcid.org/0000-0002-4579-484X"
    "@type": "Person"
  - name: "Claes Lundstrom"
    "@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  - name: "Jeroen van der Laak"
    "@id": "https://orcid.org/0000-0001-7982-0754"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2019
  copyrightHolder:
  - name: "Linköping University"
    url: "https://liu.se/"
    "@type": "Organization"
  - name: "Claes Lundström"
    "@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  provider:
  - name: "Claes Lundstrom"
    email: "claes.lundstrom@liu.se"
    "@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  - name: "Sofia Jarkman"
    email: "sofia.jarkman@regionostergotland.se"
    #"@id": "" # FIXME: missing info
    "@type": "Person"        
  - name: "Joel Hedlund"
    email: "joel.hedlund@liu.se"
    "@id": "https://orcid.org/0000-0001-6443-3604"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida@nbis.se"
    "@id": "https://datasets.aida.medtech4health.se"
    "@type": "Organization"
  dateCreated: "2019-11-19"
  datePublished: "2019-11-19"
  dateModified: "2019-11-21"
  keywords: "Pathology, Whole slide imaging, Breast, Lymph nodes, Cancer, Sentinel nodes, Immunohistochemical staining, cytokeratin, CKAE1/AE3"
  version: "1.0.2"
  # v1.0.2 2020-07-05: Update size in bytes.
  description: |
    Whole slide imaging of 396 full cases of axillary lymph nodes in breast
    cancer cases. Included are both sentinel node surgery and axillary
    resections pre, peri or post breast cancer surgery or treatment. Sentinel
    node cases are cut in three levels (stained with HE) and one additional
    slide immunohistochemically stained with CKAE1/AE3. The number of sentinel
    node cases with complete immunohistochemical staining is 321. The axillary
    resections are cut with one cut level as default. No frozen sections
    included. The cases are anonymised and exported from the digital archive at
    the Department of Clinical Pathology in Linköping, Region Östergötland.
    Included are both positive and negative cases.
  license:
  - name: "Controlled access"
    id: "https://datasets.aida.medtech4health.se/10.23698/aida/brln#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY CA license"
    id: "https://datasets.aida.medtech4health.se/10.23698/aida/brln#aida-by-ca-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution and co-authorship."
  citation:
    #- "@type": "CreativeWork"
    #  "@id": "https://doi.org/..."
    #  name: "Title of paper goes here"
other:
  shortName: "BRLN"
  status: "Ongoing"
  annotation: |
    No in-image annotations available. Additional information at case level
    available on request.
  countries-shared:
    - "NO"
    - "SE"
  organ:
  - name: "Breast"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "-"
  bytes: 2363159897649  # 2.4 TB
  numberOfScans: 4462
  numberOfAnnotations: 0
  resolution: "20x"
  modality:
  - "SM"
  scanner:
  - Aperio ScanScope AT
  - Hamamatsu NanoZoomer XR
  - Hamamatsu NanoZoomer S360
  - Hamamatsu NanoZoomer S60
  stain: "Hematoxylin and eosin. In sentinel node cases also immunohistochemical stain  for cytokeratin AE1/AE3."
  phase:
  image: "/assets/images/10.23698/aida/brln/ckae-metastasis-thumbnail.jpeg"
  exampleImage:
  - title: "Overview of whole slide imaging with hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/brln/he-overview.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/brln/he-overview-thumbnail.jpeg"
  - title: "Overview of whole slide imaging with cytokeratin immunostaining."
    url: "/assets/images/10.23698/aida/brln/ckae-overview.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/brln/ckae-overview-thumbnail.jpeg"
  - title: "Detail view of metastasis with hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/brln/he-metastasis.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/brln/he-metastasis-thumbnail.jpeg"
  - title: "Detail view of metastasis with cytokeratin immunostaining."
    url: "/assets/images/10.23698/aida/brln/ckae-metastasis.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/brln/ckae-metastasis-thumbnail.jpeg"
---
## File formats
### Pixel position scaling
Coordinates given are relative to the image *width*. To get the correct pixel
position, X coordinates (and Y coordinates!) should therefore be multiplied with
the image *width*.

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact the dataset provider for terms of access.

{% include access-request-blurb.md coauthorship="yes" %}

### AIDA BY CA license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute this data within Analytic
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the
purpose of medical diagnostics research with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data include
the authors of this dataset Sofia Jarkman and Martin Lindvall in the author list
and cite the following works:

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
