---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/mbtst-dm"
  name: "Mammograms from cancer screening"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/mbtst-dm"
  author:
  - name: "Victor Dahlblom"
    "@id": "https://orcid.org/0000-0002-4330-5387"
    "@type": "Person"
  - name: "Magnus Dustler"
    "@id": "https://orcid.org/0000-0002-5699-9664"
    "@type": "Person"
  - name: "Sophia Zackrisson"
    "@id": "https://orcid.org/0000-0001-5678-3882"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2019
  copyrightHolder:
  - name: "Lund University"
    url: "https://lu.se/"
    "@type": "Organization"
  - name: "Sophia Zackrisson"
    "@id": "https://orcid.org/0000-0001-5678-3882"
    "@type": "Person"
  provider:
  - name: "Magnus Dustler"
    email: "magnus.dustler@med.lu.se"
    "@id": "https://orcid.org/0000-0002-5699-9664"
    "@type": "Person"
  - name: "Victor Dahlblom"
    email: "victor.dahlblom@med.lu.se"
    "@id": "https://orcid.org/0000-0002-4330-5387"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2019-09-12"
  datePublished: "2019-09-12"
  dateModified: "2019-09-12"
  keywords: "Radiology, Breast, Cancer, Mammography, MMG, MG, MAMMO, DM"
  version: "1.0"
  description: |
    14711 digital mammography (DM) examinations from screening, usually
    including two projections (mediolateral oblique and craniocaudal) of each
    breast. Categorized cancer positive/negative. 95 cancer cases diagnosed on
    DM.

    Part of this dataset is directly available for inspection for partners on
    the AIDA platform, and the rest can be made available on request.

    This dataset is an anonymized excerpt from a dataset with richer associated
    data, collected in a research project which is still ongoing. The authors
    welcome proposals for new impactful research collaborations.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/mbtst-dm#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/mbtst-dm#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  - "@type": "Article"
    "@id": "https://doi.org/10.1016/S1470-2045(18)30521-7"
    name: |
      Zackrisson S, Lång K, Rosso A, Johnson K, Dustler M, Förnvik D, Förnvik
      H, Sartor H, Tingberg A, Andersson I. One-view breast tomosynthesis
      versus two-view mammography in the Malmö Breast Tomosynthesis Screening
      Trial (MBTST): a prospective, population-based, diagnostic accuracy
      study. The Lancet Oncology. October 2018.
      doi:10.1016/S1470-2045(18)30521-7
other:
  shortName: "MBTST-DM"
  origin: "Clinical"
  status: "Ongoing"
  annotation: |
    The mammography cancer screening was carried out as part of the Malmö Breast
    Tomosynthesis Screening Trial (MBTST) and all women were examined with both
    mammography and one-view wide angle breast tomosynthesis. The examinations
    were read in separate reading arms and this dataset only includes the
    results from the mammography reading arm. Presence of cancer was determined
    by an experienced radiologist and verified by a second radiologist. Cancers
    were verified with biopsy.
  countries-shared:
  - "AU"
  - "AR"
  - "BR"
  - "EG"
  - "SE"
  - "US"
  organ:
  - name: "Breast"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "40-74"
  bytes: 889058230272 # 889 GB, or 828 GiB.
  numberOfScans: 14711
  numberOfAnnotations: 0
  resolution: "Various, e.g. 2800 x 3500 px"
  modality:
  - "MG"
  scanner:
  - "Siemens Mammomat Inspiration"
  stain:
  phase:
  image:
  exampleImage:
  - title: "Mediolateral oblique view of right breast."
    url: "/assets/images/10.23698/aida/mbtst-dm/1rmlo.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/mbtst-dm/1rmlo-thumbnail.jpg"
  - title: "Mediolateral oblique view of left breast."
    url: "/assets/images/10.23698/aida/mbtst-dm/2lmlo.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/mbtst-dm/2lmlo-thumbnail.jpg"
  - title: "Craniocaudal view of right breast."
    url: "/assets/images/10.23698/aida/mbtst-dm/3rcc.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/mbtst-dm/3rcc-thumbnail.jpg"
  - title: "Craniocaudal view of left breast."
    url: "/assets/images/10.23698/aida/mbtst-dm/4lcc.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/mbtst-dm/4lcc-thumbnail.jpg"
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

Permission to use, copy, modify, and/or distribute the data within AIDA
(Analytic Imaging Diagnostics Arena https://medtech4health.se/aida) for the
purpose of medical diagnostics research with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data cite the
following publications:

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
