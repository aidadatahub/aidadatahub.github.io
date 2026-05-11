---
hidden:
layout: dataset-scapis
scapis: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/scapis-ct-site-1-body"
  name: "SCAPIS body data from site 1"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-site-1-body"
  author:
    - "name": SCAPIS
      "@id": "https://www.scapis.org/"
      "@type": "Organization"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2024
  copyrightHolder:
  - name: "Karolinska Institute"
    url: "https://ki.se/"
    "@type": "Organization"
  dateCreated: "2024-05-10"
  datePublished: "2024-05-10"
  dateModified: "2026-03-26"
  keywords: "Radiology, Computed tomography, Body, SCAPIS"
  description: |
    Data from body scans carried out in the SCAPIS study cohort in site 1. SCAPIS has recruited 30000 men and women aged 50 to 64 years with detailed imaging and functional analyses of cardiovascular and pulmonary systems. The data was collected at six university hospitals in Sweden (Uppsala, Umeå, Linköping, Malmö/Lund, Gothenburg and Stockholm). Visit [www.scapis.org](https://www.scapis.org) for more information regarding the study.   
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-site-1-body#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Please contact SCAPIS for terms of access.
other:
  modality:
  - "CT"
  shortName: "SCAPIS-CT-SITE-1-BODY"
  origin: "Clinical"
  status: "Ongoing"
  countries-shared:
  - "SE"
  organ:
  - name: "Body"
    sctid: 91722005 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=91722005&edition=uk-edition&release=v20240731&server=https://termbrowser.nhs.uk/sct-browser-api/snomed&langRefset=999000681000001101,999001251000000103
  age-span: 50-64
  bytes: 95546382153
  numberOfScans: 6108
  image: "/assets/images/logos/heartlungfoundation-logo.jpg"


---
## File formats
The dataset consists of 7z compressed archives containing a total of 161391 .dcm files.

## License
### Controlled access

Please contact [scapis@scapis.org](mailto:scapis@scapis.org) regarding access or details regarding the data.  AIDA [routines](/datasets/scapis/#access) for accessing SCAPIS. 