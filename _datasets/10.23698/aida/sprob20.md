---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/sprob20"
  name: "Spear Prostate Biopsy 2020 (SPROB20)"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/sprob20"
  author:
  - name: "Peter Walhagen"
    "@id": "https://orcid.org/0000-0002-3164-818X"
    "@type": "Person"
  - name: "Pontus Röbeck"
    "@id": "https://orcid.org/0000-0001-5556-117X"
    "@type": "Person"
  - name: "Ewert Bengtsson"
    "@id": ""
    "@type": "Person"
  - name: "Christer Busch"
    "@id": ""
    "@type": "Person"
  - name: "Michael Häggman"
    "@id": ""
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2020
  copyrightHolder:
  - name: "Michael Häggman"
    "@id": ""
    "@type": "Person"
  - name: "Uppsala University Hospital"
    url: "https://www.akademiska.se/en/"
    "@type": "Organization"
  provider:
  - name: "Peter Walhagen"
    email: "peter.walhagen@spearpoint.se"
    "@id": "https://orcid.org/0000-0002-3164-818X"
    "@type": "Person"
  - name: "Michael Häggman"
    email: " michael.haggman@akademiska.se"
    "@id": ""
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2020-04-27"
  datePublished: "2020-04-30"
  dateModified: "2020-04-30"
  keywords: "Prostate Cancer, Pathology"
  version: "1.0.0"
  # 1.2.0: Paper now published. References & license wording updated.
  description: |
    2611 scanned prostate biopsies from 460 patient cases sampled between 2015 and 2018. Annotation of clinical metadata and treatment decisions made in connection with biopsy sampling exist on case-level. Roughly 35% of the biopsies contain cancer.
    In-image annotations exists in macro images the form of ink markings from the clinical workflow.

  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/sprob20#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/sprob20#aida-by-ca-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  
  citation:
other:
  shortName: "SPROB20"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    The cases are annotated with clinical data relevant for the treatment decision and the following treatment decision made in conjunction with the biopsy sampling.
    Each image is given an identifier which can be connected to the case by the case mapping file.
    Clinical data and treatment decisions have been extracted by manual medical records search. The information about treatment is what has been noted in conjunction with the diagnosis. 
    Some cases contain missing data in some of the fields as the data wasn’t available. Some of the biopsies are resliced versions of another biopsy belonging to the same case. 
    Together with the images macro-images of the biopsies exist with localized annotation of gleason grade and cancer detection as provided in the clinical workflow.
  countries-shared: # Fixme: insert link to paper in annotation text above when published.
  - "SE"
  organ:
  - name: "Prostate"
    sctid: 41216001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "39 - 79 years, median 67 years"
  bytes: 492600000000 # ~160 GB
  numberOfScans: 2611 # 326 patients, augmented to a total of 652 subjects (x8 echo times) for train/validation dataset. 40 additional patients for a test dataset (x8 echo times).
  caseLevelAnnotaions: "Treatment decision, Gleason, PIRADS, PSA, Prostate volume, clinical T-stage"
  imageLevelAnnotations: "Connection to use"
  numberOfAnnotations:  # 652 (x8 echo times) + 40 (x8 echo times)
  resolution: "0.2204 microns per pixel (40x)"
  modality:
  - "SM"
  scanner:
  - "Hamamatsu NanoZoomer S60" # software versions DV25.0R02-1549b and DV26.0R03-1831b
  stain: "H&E"
  phase:
  exampleImage:
  - title: "Example biopsy downsampled 8x"
    url: "/assets/images/10.23698/aida/sprob20/a.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/a_thumb.jpg"
  - title: "Example biopsy downsampled 8x"
    url: "/assets/images/10.23698/aida/sprob20/b.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/b_thumb.jpg"
  - title: "Example patch in full resolution"
    url: "/assets/images/10.23698/aida/sprob20/pa_fullres.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/pa_fullres_thumb.jpg"
  - title: "Macro image with annotation"
    url: "/assets/images/10.23698/aida/sprob20/macro_a.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/macro_a_thumb.jpg"
---
## Kernels
Example jupyter notebook, SPROB20_sample.ipynb, for loading data from the dataset is available at

[https://github.com/spearpoint-analytics/sprob20](https://github.com/spearpoint-analytics/sprob20)

## File formats

Images: Pyramidal .tif

Metadata: .csv

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
