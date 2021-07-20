---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/drbr"
  name: "Breast data from the Visual Sweden project DROID"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/drbr"
  author:
  - name: "Anna Bodén"
    "@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "Jerónimo F. Rose"
    "@id": "https://orcid.org/0000-0003-3845-8546"
    "@type": "Person"
  - name: "Martin Lindvall"
    "@id": "https://orcid.org/0000-0002-7014-8874"
    "@type": "Person"
  - name: "Caroline Bivik Stadler"
    "@id": "https://orcid.org/0000-0001-7250-234X"
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
  - name: "Anna Bodén"
    email: "Anna.C.Boden@regionostergotland.se"
    "@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2019-01-09"
  datePublished: "2019-01-09"
  dateModified: "2020-11-27"
  keywords: "Pathology, Breast, Cancer, Whole slide imaging, Annotated"
  version: "1.1.0"
  # v1.1.0 2020-11-27: Add citation.
  # v1.0.2 2020-07-05: Update size in bytes.
  description: |
    This dataset consists of 361 whole slide images (WSI) - 296 malignant from
    women with invasive breast cancer (HER2 neg) and 65 benign. The tumours have
    been classified with four SNOMED-CT categories based on morphology: invasive
    duct carcinoma, invasive lobular carcinoma, in situ carcinoma, and others.
    4144 separate annotations have been made to segment different tissue
    structures connected to ontologies.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drbr#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drbr#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  - "@type": "Article"
    "@id": "https://doi.org/10.1007/s10278-020-00384-4"
    name: |
      Stadler, C.B., Lindvall, M., Lundström, C. et al. Proactive Construction
      of an Annotated Imaging Database for Artificial Intelligence Training.
      J Digit Imaging (2020). https://doi.org/10.1007/s10278-020-00384-4
other:
  shortName: "DRBR"
  status: "Completed"
  annotation: |
    The breast tumours were classified with four SNOMED-CT categories based on
    morphology: invasive duct carcinoma, Invasive lobular carcinoma, in situ
    carcinoma and others. 4144 separate annotations were made to segment
    different tissue structures connected to ontologies. One physician were
    responsible for the manual annotations controlled by a second pathologist.
  countries-shared:
  - "FI"
  - "GB"
  - "NL"
  - "NO"
  - "PL"
  - "SE"
  - "US"
  organ:
  - name: "Breast"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 500800073698 # 501 GB
  numberOfScans: 361
  numberOfAnnotations: 4144
  resolution: "40X single plane, scanned in NDP format"
  modality:
  - "SM"
  scanner:
  - "Hamamatsu NanoZoomer-XR C12000 series 2013"
  - "Hamamatsu NanoZoomer 2.0 HT C9600 series 2013"
  stain: "H&E (hematoxylin and eosin)"
  phase:
  exampleImage:
  - title: "Overview of whole slide imaging."
    url: "/assets/images/10.23698/aida/drbr/wsi.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drbr/wsi-thumbnail.jpeg"
  - title: "Overview of annotations."
    url: "/assets/images/10.23698/aida/drbr/annotations.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drbr/annotations-thumbnail.jpeg"
  - title: "Detail view of annotations."
    url: "/assets/images/10.23698/aida/drbr/detail.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drbr/detail-thumbnail.jpeg"
  - title: "To-scale view of pixel resolution in original whole slide imaging data."
    url: "/assets/images/10.23698/aida/drbr/to-scale.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drbr/to-scale-thumbnail.jpeg"
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
