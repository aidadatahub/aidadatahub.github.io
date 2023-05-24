---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/brmbr"
  name: "Breast data from preoperative and surgical cases"
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
  datePublished: "2023-05-24"
  dateModified: "2023-05-15"
  keywords: "Breast cancer, Pathology, Whole slide imaging"
  version: "1.0.1"
  description: |
    Whole slide imaging of 102 primary diagnosed breast cancers. In this dataset one representative image from the preoperative biopsy have been manually selected and matched with one image representative from the surgically removed invasive tumour. Both biopsy and whole section are presented as one case and contain 2 HE stained slides per case. The section from the surgical resections are cut with one level as default, biopsies may vary from 1-3 per slide. Breastcancer cases were consecutively selected from the laboratory information system based on diagnosis including only Invasive breast cancer (NST) and Invasive lobular carcinoma (ILC). Each slide has been evaluated in clinic by at least one senior consultant in breast pathology and controlled before extraction to this dataset by an additional independent senior breast pathologist. No neoadjuvant cases included. No male breast cancers included. The cases are anonymised and exported from the digital archive at the Department of Clinical Pathology in Linköping, Region Östergötland.   
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
  #- "@type": "Article"
  #  "@id": "https://doi.org/10.1007/s10278-020-00384-4"
  #  name: |
other:
  shortName: "BRMBR"
  status: "Ongoing"
  annotation: |
    No in-image annotations available.
  countries-shared:
  - "NL"
  organ:
  - name: "Breast"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 120259084288 # 501 GB
  numberOfScans: 102
  numberOfAnnotations: 0
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
  - title: "Example from case 11 in this dataset, here showing the preoperative sample (biopsy) in low resolution, that is paired on case level with an image from the surgical specimen from the aligned breastcancer."
    url: "/assets/images/10.23698/aida/brmbr/11A.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/11A-thumbnail.jpg"
  - title: "A close up in high resolution from Figure 1; an example from case 11 in this dataset, here showing an area of interest for atypia and mitosis from the preoperative sample (biopsy)."
    url: "/assets/images/10.23698/aida/brmbr/11A_high resolution on biopsy.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/11A_high resolution on biopsy-thumbnail.jpg"
  - title: "Example from case 11 in this dataset, here showing the chosen image from the surgical sample (excision) in low resolution, that is paired on case level with an image of the preoperative biopsy from the same breastcancer"
    url: "/assets/images/10.23698/aida/brmbr/11B.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/11B-thumbnail.jpg"
  - title: "A close up in high resolution from Figure 3; an example from case 11 in this dataset, here showing an area of interest for atypia and mitosis from the preoperative sample (biopsy)."
    url: "/assets/images/10.23698/aida/brmbr/11B_high resolution on resection slide.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/brmbr/11B_high resolution on resection slide-thumbnail.jpg"
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
