---
hidden: yes
scapis: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/scapis-ct-ki-he"
  name: "SCAPIS CCTA data from Stockholm"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/scapis-ct-ki-he"
  author:
  - name: "Anders Petterson"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "Anna Berggren"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2024
  copyrightHolder:
  - name: "Karolinska Institute"
    url: "https://ki.se/"
    "@type": "Organization"
  - name: "Anna Berggren"
    #"@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  provider:
  - name: "Anders Petterson"
    email: "anders.petterson@ki.se"
    #"@id": "https://orcid.org/0000-0002-9368-0177"
    "@type": "Person"
  - name: "Anna Berggren"
    email: "anna.berggren@ki.se"
    #"@id": "https://orcid.org/0000-0002-0128-870X"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2024-05-10"
  datePublished: "2024-05-10"
  dateModified: "2024-05-10"
  keywords: "SCAPIS, Computed tomography, Heart, Radiology, Annotated"
  version: "1.0.0"
  description: |
    Data from 3200 coronary computed tomography angiography (CCTA) scans carried out in the SCAPIS study cohort in Stoclholm. SCAPIS has recruited 25000 men and women aged 50 to 65 years with detailed imaging and functional analyses of cardiovascular and pulmonary systems. The data was collected at six university hospitals in Sweden (Uppsala, Umeå, Linköping, Malmö/Lund, Gothenburg and Stockholm). This dataset contains data from Stockholm.   
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
    "@id": "https://pubmed.ncbi.nlm.nih.gov/38690927/"
    name: "P-selectin and C-reactive protein in relation to home blood pressure and coronary calcification: a SCAPIS substudy. Af Geijerstam P., Rådholm K., Jonasson L., et al."
other:
  shortName: "SCAPISKIHE"
  origin: "Clinical"
  status: "Ongoing"
  annotation: |
    No in-image annotations available.
  countries-shared:
  - "SE"
  organ:
  - name: "Heart"
    sctid: 80891009 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: 50-65
  bytes: 120259084288
  numberOfScans: 150
  numberOfAnnotations: 0
  resolution:
  modality:
  - "CT"
  scanner:
  - "Philips Brilliance 64 CT"
  stain:
  phase: Contrast enhanced
  exampleImage:
  - title: ""
    url: "/assets/images/10.23698/aida/scapiskihe/1.png"
    thumbnail-url: "/assets/images/10.23698/aida/scapiskihe/1-thumbnail.png"
  - title: ""
    url: "/assets/images/10.23698/aida/scapiskihe/2.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/scapiskihe/2-thumbnail.jpg"

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
