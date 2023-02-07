---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/lesser"
  name: "Low-resolution prostate MR"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/lesser"
  author:
  - name: "Samuel Fransson"
    "@id": "https://orcid.org/0000-0002-7883-5724"
    "@type": "Person"
  - name: "Robin Strand"
    "@id": "https://orcid.org/0000-0001-7764-1787"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2022
  copyrightHolder:
  - name: "Medical Physics Region Uppsala"
    url: "https://www.akademiska.se/"
    "@type": "Organization"
  - name: "Alexander Englund"
    #"@id": "https://orcid.org/0000-0003-0677-???"
    "@type": "Person"
  - name: "Uppsala University"
    url: "https://www.uu.se/"
    "@type": "Organization"
  - name: "Robin Strand"
    "@id": "https://orcid.org/0000-0001-7764-1787"
    "@type": "Person"
  provider:
  - name: "Samuel Fransson"
    email: "samuel.fransson@akademiska.se"
    "@id": "https://orcid.org/0000-0002-7883-5724"
    "@type": "Person"
  - name: "Robin Strand"
    email: "robin.strand@it.uu.se"
    "@id": "https://orcid.org/0000-0001-7764-1787"
    "@type": "Person"
  - name: "Alexander Englund"
    email: "alexander.englund@akademiska.se"
    #"@id": "https://orcid.org/0000-0001-7764-1787"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2022-12-09"
  datePublished: "2023-01-23"
  dateModified: "2023-01-23"
  keywords: "MR-Linac, Radiotherapy, Prostate, Low-resolution"
  version: "1.0"
  description: |
    MR-images of the prostate region from healthy volunteers acquired at Elekta unity MR-Linac at Uppsala University Hospital. Data from each volunteer consist of an initial T2-weighted scan, followed by a number of groups of paired low and high resolution data approximately 5 minutes apart with a 3D balanced steady state free precession sequence. The initial T2-image and all high resolution images are segmented by a single observer including prostate, bladder and rectum.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lesser#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lesser#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  #- "@type": "CreativeWork"
    #"@id": "https://doi.org/10.1080/17453674.2021.1891512"
    #name: "Georg Zdolsek, Yupei Chen, Hans-Peter Bögl, Chunliang Wang, Mischa Woisetschläger & Jörg Schilcher (2021) Deep neural networks with promising diagnostic accuracy for the classification of atypical femoral fractures, Acta Orthopaedica, 92:4, 394-400, DOI: 10.1080/17453674.2021.1891512"
other:
  shortName: "LESSER"
  status: "Completed"
  annotation: |
    All initial T2-weighted scans along with the high resolution images in each paired low and high resolution group are segmented by a single observer in Monaco 5.40.01 and containing delineations of prostate (CTV), bladder and rectum.
  countries-shared:
  - #"SE"
  organ:
  - name: "Prostate"
    sctid: 71341001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "" # FIXME: missing data
  bytes: 5690831667 
  numberOfScans: 310
  numberOfAnnotations: 255
  resolution:
  - "Varying"
  modality:
  - "MR"
  scanner: Marlin 1.5 T, Elekta Unity
  stain:
  phase:
  image:
  exampleImage:
  - title: "Example transversal images of different resolution levels and delineations."
    url: "/assets/images/10.23698/aida/lesser/LESSER_1_transversal.png"
    thumbnail-url: "/assets/images/10.23698/aida/lesser/LESSER_1_transversal-thumbnail.png"
  - title: "Example sagittal images of different resolution levels and delineations."
    url: "/assets/images/10.23698/aida/lesser/LESSER_2_sagittal.png"
    thumbnail-url: "/assets/images/10.23698/aida/lesser/LESSER_2_sagittal-thumbnail.png"
  - title: "Example coronal images of different resolution levels and delineations."
    url: "/assets/images/10.23698/aida/lesser/LESSER_3_coronal.png"
    thumbnail-url: "/assets/images/10.23698/aida/lesser/LESSER_3_coronal-thumbnail.png"
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
