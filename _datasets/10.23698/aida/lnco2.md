---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/lnco2"
  name: "Regional lymph node metastasis in colon adenocarcinoma, second collection series"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco2"
  author:
  - name: "Gordan Maras"
    "@id": "https://orcid.org/0000-0002-0566-6739"
    "@type": "Person"
  - name: "Martin Lindvall"
    "@id": "https://orcid.org/0000-0002-7014-8874"
    "@type": "Person"
  - name: "Claes Lundstrom"
    "@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2020
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
  - name: "Gordan Maras"
    email: "gordan.maras@regiongavleborg.se"
    "@id": "https://orcid.org/0000-0002-0566-6739"
    "@type": "Person"        
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2020-01-09"
  datePublished: "2020-01-09"
  dateModified: "2020-11-18"
  keywords: "Pathology, Annotated, Whole slide imaging, Lymph nodes, Cancer, Colon, Adenocarcinoma"
  version: "1.2.0"
  # v1.2.0 2020-11-18: Updated statistics, description and license.
  # v1.1.0 2020-10-22: Add annotations.
  # v1.0.1 2020-07-05: Update size in bytes.
  description: |
    Whole slide pathology images from regional lymph node metastasis in colon
    adenocarcinoma produced at Region Gävleborg Clinical Pathology and Cytology
    department. Consists of fifty chronologically consecutive cases.

    This dataset represents a second collection series in connection to the
    <a href="lnco">LNCO dataset</a> using different collection and annotation
    parameters.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco2#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco2#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
    #- "@type": "CreativeWork"
    #  "@id": "https://doi.org/..."
    #  name: "Title of paper goes here"
other:
  shortName: "LNCO2"
  status: "Completed"
  annotation: |
    Lymph nodes have been identified by an experienced pathologist and annotated
    using region-of-interest boxes (positive, negative, unassested). A few detailed polygons of tumor exist. See details below.
  countries-shared:
  - "FI"
  - "IE"
  - "NO"
  - "SE"
  organ:
  - name: "Colon"
    sctid: 71854001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 651761287168 # 607 GiB.
  numberOfScans: 1245
  numberOfAnnotations: 2598
  resolution: "20x and 40x"
  modality:
  - "SM"
  scanner:
  - "Aperio Scanscope (20x)"
  - "Hamamatsu NanoZoomer (40x)"
  stain: "Hematoxylin and eosin."
  phase:
  image:
  exampleImage:
  - title: "Overview of lymph node whole slide imaging with hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco2/lymph-nodes.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco2/lymph-nodes-thumbnail.jpeg"
  - title: "To-scale view of pixel resolution in original lymph node whole slide imaging data from hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco2/lymph-nodes-to-scale.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco2/lymph-nodes-to-scale-thumbnail.jpeg"
  - title: "Overview of primary tumor whole slide imaging with hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco2/primary-tumor.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco2/primary-tumor-thumbnail.jpeg"
  - title: "To-scale view of pixel resolution in original primary tumor whole slide imaging data from hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco2/primary-tumor-to-scale.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco2/primary-tumor-to-scale-thumbnail.jpeg"
---
## Annotation details

### Labels

The following labels exists:

- roi_lgl_norm:: Region contains a lymph node section that do not contain tumor-positive areas, eg, is normal or negative. (but see also note below)

- roi_lgl_unknown:: Region contains a lymph node for which ground truth has not been established.

- roi_lgl_tumor:: Region contains a lymph node where at least some areas are tumor-positive areas. (Might not be annotated)

- roi_lgl_exclude:: Contains lymph node that was determined to be of poor quality or contain severe artifacts from scanning. Would be excluded from clinial review (not suitable).

- roi_tumor:: Region mostly contains positive pixels, but not guaranteed that all pixels are positive.

- excl & excl_artifact:: these areas should be substracted from tumor-annotated regions to gain pure-tumor pixels.

- bkg: region contains only background pixels

NOTE: `roi_tumor` annotations are not exhaustive, meaning, there might be more tumor areas in `lgl_roi_tumor` lymph nodes than annotated with `roi_tumor` annotations.

NOTE: Some `roi_lgl_norm` areas contain tumor cells that are from an accidental contamination of the glass during processing. This is normal during routine clinical work and a challenge that automated systems should deal with in an appropriate manner. This is a very easy task for human pathologists to discern.

### Sampling procedure

Sampling procedure: Query for patients with confirmed adenocarcinomas that underwent colorectomy with subsequent lymphnode review as part of TNM-staging. Selected 50 chronologically consecutive cases from unique patients (no patient has more than one case).

Source: One medical clinic in Sweden. Same as for LNCO1.

### Descriptive statistics

```
LNCO2
  patients: 50
  cases: 50
  images: 1245
     median dimensions(WxH px): 49920 x 38016
     median resolution (micrometer per pixel): 0.459896982
  annotations:
    number: 2598
    lymph node sections (roi) 2551
      which are negative 948
      which are positive 75
      which are unassessed 1517
    images with at least one approximate tumor annotation: 30
```

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
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the
purpose of medical diagnostics research with or without fee is hereby granted,
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
