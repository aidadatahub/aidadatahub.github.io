---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/brmbr"
  name: "Matched preoperative biopsy and surgical section from breast cancer cases"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/brmbr"
  author:
  - name: "Anna Bodén"
    "@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2023
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
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2023-02-15"
  datePublished: "2023-02-20"
  dateModified: "2023-03-02"
  keywords: "Breast cancer, Pathology, Whole slide imaging"
  version: "1.0.0"
  description: |
    Whole slide imaging of 112 primary diagnosed breast cancers. In this dataset one representative image from the preoperative biopsy have been manually selected and matched with one image representative from the surgically removed invasive tumour. Both biopsy and whole section are presented as one case and contain 2 HE stained slides per case. The section from the surgical resections are cut with one level as default, biopsies may vary from 1-3 per slide. Breastcancer cases were consecutively selected from the laboratory information system based on diagnosis including only Invasive breast cancer (NST) and Invasive lobular carcinoma (ILC). Each slide has been evaluated in clinic by at least one senior consultant in breast pathology and controlled before extraction to this dataset by an additional independent senior breast pathologist. No neoadjuvant cases included. No male breast cancers included. The cases are anonymised and exported from the digital archive at the Department of Clinical Pathology in Linköping, Region Östergötland. 
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/brmbr#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/brmbr#aida-by-license"
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
  shortName: "BRMBR"
  status: "Ongoing"
  countries-shared:
  - "NL"
  organ:
  - name: "Breast"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: # 501 GB
  numberOfScans: 112
  numberOfAnnotations: 
  resolution: "x40 (one large section x20 is included)"
  modality:
  - "SM"
  scanner:
  - "Hamamatsu NanoZoomer XR"
  - "Hamamatsu NanoZoomer S360"
  - "Hamamatsu NanoZoomer S60"
  stain: "H&E (hematoxylin and eosin)"
  phase:
  exampleImage:
  - title: "Overview of whole slide imaging."
    url: "/assets/images/10.23698/aida/brmbr/"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/."
  - title: "Overview of annotations."
    url: "/assets/images/10.23698/aida/brmbr/"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/"
  - title: "Detail view of annotations."
    url: "/assets/images/10.23698/aida/brmbr/"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/"
  - title: "To-scale view of pixel resolution in original whole slide imaging data."
    url: "/assets/images/10.23698/aida/brmbr/"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/"
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
