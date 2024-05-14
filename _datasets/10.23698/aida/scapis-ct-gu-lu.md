---
hidden: yes
scapis: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/scapis-ct-gu-lu"
  name: "SCAPIS CT lung data from Göteborg"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-gu-lu"
  author:
  - name: "Martin Lindberg"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "Maria Persson"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2024
  copyrightHolder:
  - name: "Göteborg University"
    url: "https://www.gu.se/"
    "@type": "Organization"
  - name: "Martin Lindberg"
    #"@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  provider:
  - name: "Martin Lindberg"
    email: "martin.lindberg@gu.se"
    #"@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  - name: "Maria Persson"
    email: "maria.persson@gu.se"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2024-02-15"
  datePublished: "2024-05-24"
  dateModified: "2024-05-15"
  keywords:  "SCAPIS, Computed tomography, Lung, Radiology"
  version: "1.0.0"
  description: |
    Standard clinical CT scans of lung were conducted using GE Lightspeed VCT scanner. The examinations produced a total of 350 images with a thickness ranging between 1 and 0.625mm, along with supplementary reformatted images. The data was collected at six university hospitals in Sweden (Uppsala, Umeå, Linköping, Malmö/Lund, Gothenburg and Stockholm). This dataset contains data from Gothenburg.   
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
  - "@type": "CreativeWork"
    "@id": "https://pubmed.ncbi.nlm.nih.gov/38637659/"
    name: "Analysis of plasma metabolomes from 11 309 subjects in five population-based cohorts. Ghosh N., Lejonberg C., Czuba T., et al."
  - "@type": "CreativeWork"
    "@id": "https://pubmed.ncbi.nlm.nih.gov/38576112/"
    name: "Pulmonary volumes and signs of chronic airflow limitation in quantitative computed tomography. Bäcklin E., Gonon A., Sköld M., et al."
  - "@type": "CreativeWork"
    "@id": "https://pubmed.ncbi.nlm.nih.gov/38578722/"
    name: "Cardiorespiratory fitness and the association with galectin-1 in middle-aged individuals. Arvidsson D., Rodrigues Silva V. R., Ekblom Ö., et al."
other:
  shortName: "SCAPISGULU"
  origin: "Clinical"
  status: "Completed"
  annotation: "Segmentation was done first with an interactive software (Mialab), followed by manual inspection and correction using ITKSNAP. The interactive method is based on fuzzy connectedness followed by level set method. Both the segmentation mask and annotated anatomical landmarks were created by a trained radiologist."
  countries-shared:
  - "SE"
  organ:
  - name: "Lung"
    sctid: 39607008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 3379200000000
  numberOfScans: 350
  numberOfAnnotations: 350
  resolution: 
  modality:
  - "CT"
  scanner:
  - "GE Lightspeed VCT"
  stain:
  phase:
  exampleImage:
  - title: ""
    url: "/assets/images/10.23698/aida/scapisgulu/1.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/scapisgulu/1-thumbnail.jpg"
  - title: ""
    url: "/assets/images/10.23698/aida/scapisgulu/2.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/scapisgulu/2-thumbnail.jpg"
  - title: ""
    url: "/assets/images/10.23698/aida/scapisgulu/3.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/scapisgulu/3-thumbnail.jpg"
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
