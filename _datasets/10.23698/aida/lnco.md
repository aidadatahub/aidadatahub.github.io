---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/lnco"
  name: "Regional lymph node metastasis in colon adenocarcinoma"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco"
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
  - name: "Gordan Maras"
    email: "gordan.maras@akademiska.se"
    "@id": "https://orcid.org/0000-0002-0566-6739"
    "@type": "Person"        
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2019-08-13"
  datePublished: "2019-08-13"
  dateModified: "2020-11-18"
  keywords: "Pathology, Whole slide imaging, Annotated, Lymph nodes, Cancer, Colon, Adenocarcinoma"
  version: "1.2.0"
  # v1.2.0 2020-11-18: Updated statistics, description and license.
  # v1.1.0 2020-10-22: Add new cases and annotations.
  # v1.0.1 2020-07-05: Update size in bytes.
  description: |
    Whole slide pathology images from regional lymph node metastasis in colon
    adenocarcinoma produced at Region Gävleborg Clinical Pathology and Cytology
    department and Region Östergötland Clinical Pathology department.
    Annotations for AI training produced as part of AIDA clinical fellowship
    project investigating AI decision support in metastasis detection.

    This dataset has been extended with a second collection series in the
    <a href="lnco2">LNCO2 dataset</a> using different collection and annotation
    parameters.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lnco#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
    #- "@type": "CreativeWork"
    #  "@id": "https://doi.org/..."
    #  name: "Title of paper goes here"
other:
  shortName: "LNCO"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    ROI boxes around lymph nodes (positive, negative or unasssed) and detailed tumor polygons

    See details below.
  countries-shared:
  - "CN"
  - "FI"
  - "IE"
  - "NO"
  - "SE"
  - "US"
  - "SG"
  organ:
  - name: "Colon"
    sctid: 71854001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 373662154752 # 348 GiB
  numberOfScans: 977
  numberOfAnnotations: 7379
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
  - title: "Overview of whole slide imaging with hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco/he-overview.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco/he-overview-thumbnail.jpeg"
  - title: "To-scale view of pixel resolution in original whole slide imaging data from hematoxylin and eosin staining."
    url: "/assets/images/10.23698/aida/lnco/he-to-scale.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/lnco/he-to-scale-thumbnail.jpeg"
---
## Annotation details

### Labels

The following labels exists:

- roi_lgl_norm:: Region contains a lymph node section that do not contain tumor-positive areas, eg, is normal or negative. (but see also note below)

- roi_lgl_unknown:: Region contains a lymph node for which ground truth has not been established.

- roi_lgl_tumor:: Region contains a lymph node where at least some areas are tumor-positive areas. (Might not be annotated)

- roi_lgl_exclude:: Contains lymph node that was determined to be of poor quality or contain severe artifacts from scanning. Would be excluded from clinial review (not suitable).

- tumor:: region exclusively contains tumor pixels (but see also excl category below)

- excl & excl_artifact:: these areas should be substracted from tumor-annotated regions to gain pure-tumor pixels.

- bkg: region contains only background pixels

NOTE: `tumor` annotations are not exhaustive, meaning, there might be more tumor areas in `lgl_roi_tumor` lymph nodes than annotated with `tumor` annotations.

NOTE: Some `roi_lgl_norm` areas contain tumor cells that are from an accidental contamination of the glass during processing. This is normal during routine clinical work and a challenge that automated systems should deal with in an appropriate manner. This is a very easy task for human pathologists to discern.

NOTE: `tumor` regions not within a `roi_lgl_*` region should be assumed to be annotations of tumor in the the primary tumor. This can easily be verified visually, and the primary tumor is always on the initial blocks of the case (A..B...C etc)

### Sampling procedure

Sampling procedure: Query for patients with confirmed adenocarcinomas that underwent colorectomy with subsequent lymphnode review as part of TNM-staging. Query selected N cases with a relatively high number of reported positive lymph nodes.

Source: Two medical clinics in Sweden.

### Descriptive statistics

```
LNCO1
  patients: 39
  cases: 39
  images: 977
     median dimensions(WxH px): 49799 x 38729
     median resolution (micrometer per pixel): 0.4959
  annotations:
    number: 7379
    lymph node sections (roi) 1557
      which are negative 712
      which are positive 292
      which are unassessed 525
    images with at least one detailed tumor annotation: 165
```
## File formats
### Pixel position scaling
Coordinates given are relative to the image *width*. To get the correct pixel
position, X coordinates (and Y coordinates!) should therefore be multiplied with
the image *width*.

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.

{% include data-access-requirements.md %}

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

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
