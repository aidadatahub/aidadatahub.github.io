---
hidden: 
layout: dataset-scapis
scapis: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/scapis-ct-site-2-casc"
  name: "SCAPIS CASC data from site 2"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-site-2-casc"
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
  dateModified: "2024-05-10"
  keywords: "Radiology, Computed tomography, Heart, Scapis"
  description: |
    Data from CASC scans carried out in the SCAPIS study cohort in site 2. SCAPIS has recruited 25000 men and women aged 50 to 64 years with detailed imaging and functional analyses of cardiovascular and pulmonary systems. The data was collected at six university hospitals in Sweden (Uppsala, Umeå, Linköping, Malmö/Lund, Gothenburg and Stockholm).   
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-site-2-casc#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Please contact SCAPIS for terms of access.
other:
  modality:
  - "CT"
  shortName: "SCAPIS-CT-SITE-2-CASC"
  origin: "Clinical"
  status: "Ongoing"
  countries-shared:
  - "SE"
  organ:
  - name: "Heart"
    sctid: 80891009 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=80891009&edition=uk-edition&release=v20240731&server=https://termbrowser.nhs.uk/sct-browser-api/snomed&langRefset=999000681000001101,999001251000000103
  age-span: 50-64
  bytes: 332882776809
  numberOfScans: 6146
  image: "/assets/images/10.23698/aida/scapiskilu/scapis-logo.jpg"


---
## File formats
The dataset consists of 7z compressed archives containing a total of 631570 .dcm files.

## License
### Controlled access
Please contact [SCAPIS](/datasets/scapis/#access) for terms of access.
