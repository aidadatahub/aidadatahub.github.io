---
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/drli"
  name: "Liver data from the Visual Sweden project DROID"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/drli"
  author:
  - name: "Mischa Woisetschläger"
    "@id": "https://orcid.org/0000-0003-0066-4985"
    "@type": "Person"
  - name: "Johan Blomma"
    #"@id": "" # FIXME: missing info
    "@type": "Person"
  - name: "Nils Dahlström"
    "@id": "https://orcid.org/0000-0002-4111-1693"
    "@type": "Person"
  - name: "Caroline Bivik Stadler"
    "@id": "https://orcid.org/0000-0001-7250-234X"
    "@type": "Person"
  - name: "Daniel Forsberg"
    "@id": "https://orcid.org/0000-0003-0908-9470"
    "@type": "Person"      
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2019
  copyrightHolder:
  - name: "Linköping University"
    url: "https://liu.se/"
    "@type": "Organization"
  - name: "Anders Persson"
    "@id": "https://orcid.org/0000-0002-9446-6981"
    "@type": "Person"
  provider:
  - name: "Mischa Woisetschläger"
    email: "Mischa.Woisetschlager@regionostergotland.se"
    "@id": "https://orcid.org/0000-0003-0066-4985"
    "@type": "Person"
  - name: "Anders Persson"
    email: "anders.s.persson@liu.se"
    "@id": "https://orcid.org/0000-0002-9446-6981"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2019-01-09"
  datePublished: "2019-01-09"
  dateModified: "2020-11-27"
  keywords: "Radiology, Liver, Cancer, Computed tomography, Annotated"
  version: "1.1.0"
  # v1.1.0 2020-11-27: Add citation.
  description: |
    77 CT abdomen (computed tomography) examinations taken with contrast in
    venous phase. All cases showed liver malignancies. Manual oncological
    annotations were made by a radiologist and these were controlled by a second
    experienced radiologist. All changes with a diameter greater than 5mm were
    segmented and assumed metastases (cysts excluded as defined by HU). 317
    lesions were annotated.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drli#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/drli#aida-by-license"
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
  shortName: "DRLI"
  status: "Completed"
  annotation: |
    Manual oncological annotations was made by a radiologist and these were
    controlled by a second radiologist. All changes with a diameter greater than
    5mm was segmented and as assumed metastases (cysts excluded defined by HU).
    317 lesions were annotated.
  countries-shared:
  - "SE"
  - "US"
  organ:
  - name: "Liver"
    sctid: 10200004 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span:
  bytes: 33800000000
  numberOfScans: 77
  numberOfAnnotations: 317
  resolution:
  modality:
  - "CT"
  scanner:
  - "Siemens CT Scanners"
  stain:
  phase: Venuous (with contrast)
  exampleImage:
  - title: "3D illustration of locations, sizes and distribution in liver metastasis (green)."
    url: "/assets/images/10.23698/aida/drli/3d.png"
    thumbnail-url: "/assets/images/10.23698/aida/drli/3d-thumbnail.png"
  - title: "Slice from thorax CT stack with annotated liver metastases."
    url: "/assets/images/10.23698/aida/drli/slice.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/drli/slice-thumbnail.jpeg"
---
## File formats
DICOM. Please see our help pages for some examples of
[working with DICOM](/about/help/#working-with-dicom).

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
