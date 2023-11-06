---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/drsk"
  name: "Skin data from the Visual Sweden project DROID"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/drsk"
  author:
  - name: "Karin Lindman"
    "@id": "https://orcid.org/0000-0003-1298-517X"
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
  - name: "Karin Lindman"
    email: "Karin.Lindman@regionostergotland.se"
    "@id": "https://orcid.org/0000-0003-1298-517X"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2019-01-09"
  datePublished: "2019-01-09"
  dateModified: "2020-11-27"
  keywords: "Pathology, Skin, Cancer, Whole slide imaging, Annotated"
  version: "1.1.0"
  # v1.1.0 2020-11-27: Add citation.
  # v1.0.3 2020-07-05: Update size in bytes.
  description: |
    The dataset consists of 99 H&E-stained whole slide skin images (WSI) - 49
    abnormal and 50 normal cases. All significant abnormal findings identified
    are outlined and categorized into 13 types such as actinic keratosis, basal
    cell carcinoma and dermatofibroma. Other tissue components, such as
    epidermis, adnexal structures, as well as the surgical margin are delineated
    to create a complete histological map. In total, 16741 separate annotations
    have been made to segment the different tissue structures and link them to
    ontological information.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drsk#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drsk#aida-by-license"
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
  shortName: "DRSK"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    One physician was responsible for the manual annotations controlled by a
    second pathologist. Accurate annotations were made over the whole tissues.
    16741 separate annotations were made.

    The following findings were annotated in the abnormal cases: actinic
    keratosis, basal cell carcinoma, dermatofibroma, dysplastic nevus,
    intradermal nevus, keratoachantoma, lentigo malignant melanoma, malignant
    melanoma, malignant melanoma in situ, scar, seborrheic keratosis, squamous
    cell carcinoma and squamous cell carcinoma in situ. Other areas annotated:
    abnormal, acanthosis, artifacts, dermis, epidermis, fibrosis, fibrin body,
    granuloma, inflammation, inflammatory edema, normal, perichondrium, reactive
    cellular changes, skin appendage structure, surgical margins, structure of
    cartilage of auditory canal, subcutaneous fatty tissue, subcutaneous tissue,
    surgical margins and from which body part the skin was excised.

    In the normal skin cases were following structures chosen to be annotated:
    artifact, dermis, epidermis, normal skin, perichondrium, skin and
    subcutaneous structure, skin appendage structure, skin structure, structure
    of cartilage of auditory canal, subcutaneous fatty tissue, subcutaneous
    tissue and surgical margins.
  countries-shared:
  - "FI"
  - "NL"
  - "NO"
  - "SE"
  - "AT"
  organ:
  - name: "Skin"
    sctid: 39937001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "20-93 years"
  bytes: 32362326070 # 32 GB
  numberOfScans: 99
  numberOfAnnotations: 16741
  resolution: "20X single plane"
  modality:
  - "SM"
  scanner:
  - "Scanscope AT (Aperio, US)"
  - "NanoZoomer XR (Hamamatsu, Japan)" # FIXME: is this same as "Hamamatsu NanoZoomer-XR C12000 series 2013"?
  - "NanoZoomer XRL (Hamamatsu, Japan)" # FIXME: is this same as "Hamamatsu NanoZoomer 2.0 HT C9600 series 2013"
  stain: "H&E (hematoxylin and eosin)"
  phase:
  exampleImage:
  - title: "Overview of whole slide imaging."
    url: "/assets/images/10.23698/aida/drsk/wsi.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drsk/wsi-thumbnail.jpeg"
  - title: "Overview of annotations."
    url: "/assets/images/10.23698/aida/drsk/wsi-annotations.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drsk/wsi-annotations-thumbnail.jpeg"
  - title: "Detail view of abnormal findings."
    url: "/assets/images/10.23698/aida/drsk/detail.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drsk/detail-thumbnail.jpeg"
  - title: "Detail view of annotations."
    url: "/assets/images/10.23698/aida/drsk/detail-annotations.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drsk/detail-annotations-thumbnail.jpeg"
  - title: "To-scale view of pixel resolution in original whole slide imaging data."
    url: "/assets/images/10.23698/aida/drsk/to-scale.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drsk/to-scale-thumbnail.jpeg"
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
[doi:{{ doi }}]({{ page.datacite["@id"] }}).
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
