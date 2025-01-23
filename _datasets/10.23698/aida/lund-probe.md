---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/lund-probe"
  name: "LUND-PROBE – LUND Prostate Radiotherapy Open Benchmarking and Evaluation dataset"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/lund-probe"
  author:
  - name: "Viktor Rogowski"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Lars E Olsson"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Jonas Scherman"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Emilia Persson"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Mustafa Kadhim"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Sacha af Wetterstedt"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Adalsteinn Gunnlaugsson"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Martin Nilsson"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Nandor Vass"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Mathieu Moreau"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Maria Gebre Medhin"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Sven Bäck"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Per Munck af Rosenschöld"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Silke Engelholm"
    #"@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Christian Jamtheim Gustafsson"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2025
  copyrightHolder:
  - name: "Skånes Universitetssjukhus"
    url: "https://vard.skane.se/skanes-universitetssjukhus-sus/"
    "@type": "Organization"
  - name: "Christian Jamtheim Gustafsson"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  provider:
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  - name: "Christian Jamtheim Gustafsson"
    email: "Christian.JamtheimGustafsson@skane.se"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Lars E Olsson"
    email: "lars_e.olsson@med.lu.se"
  #  "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Rogowski Viktor"
    email: "Viktor.Rogowski@skane.se"
  #  "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  dateCreated: "2025-01-13"
  datePublished: "2025-01-15"
  dateModified: "2025-01-15"
  keywords: "MRI, Synthetic CT, OAR, Radiotherapy, Inter-observer, Target, Radiation therapy, MRI only, Delineation uncertainty, Deep learning, Annotated"
  version: "1.0.0"
  description: |
    Radiotherapy treatment for prostate cancer relies on computed tomography (CT) and magnetic resonance imaging (MRI) for delineation of radiation targets and organs at risk (OARs). Manual delineation of these volumes is regarded as the gold standard for ground truth in machine learning applications but to acquire such data is tedious and time-consuming. A publicly available clinical dataset is introduced comprising MRI images, synthetic CT (sCT) images, target and OARs delineations, and radiotherapy dose distributions for 432 prostate cancer patients treated with an MRI-only radiotherapy workflow. An extended dataset with 35 patients is also included, containing the data mentioned above together with deep learning (DL)-generated delineations, DL uncertainty maps, and DL structures manually edited by four radiation oncologists. The publication of these resources aims to aid research within the fields of automated radiotherapy planning and structure delineation, inter-observer analyses, and DL uncertainty investigation.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lund-probe#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/lund-probe#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
#  - "@type": "Article"
#    "@id": "https://doi.org/10.1088/1361-6560/abb0f9"
other:
  shortName: "LUND-PROBE"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    All structures delineated from clinical radiotherapy of prostate cancer patients.
  countries-shared: 
  - "SE"
  organ:
  - name: "Prostate"
    sctid: 41216001 # SNOMED-CT 
  age-span:
  bytes: 176562700206
  numberOfScans: 467
  numberOfAnnotations: 8873
  resolution: "0.6x0.7 to 0.8x0.9 mm in plane. 2.5 mm slice thickness."
  modality:
  - "MR"
  scanner:
  - "3T Architect, GE Healthcare"
  stain:
  phase:
  image: "/assets/images/10.23698/aida/lund-probe/MRI+Struct-thumbnail.png"
  exampleImage:
  - title: "MRI volume with radiotherapy structures overlayed."
    url: "/assets/images/10.23698/aida/lund-probe/MRI+Struct.png"
    thumbnail-url: "/assets/images/10.23698/aida/lund-probe/MRI+Struct-thumbnail.png"
  - title: "Synthetic CT (sCT) with radiotherapy structures and planned dose distribution overlayed."
    url: "/assets/images/10.23698/aida/lund-probe/sCT+struct+Dose+colorwash.png"
    thumbnail-url: "/assets/images/10.23698/aida/lund-probe/sCT+struct+Dose+colorwash-thumbnail.png"
  - title: "Left: T2w MRI with prostate delineation. Middle: Four oncologist individual prostate delineations on T2w MRI zoomed in, visualized in separate colors. Right: Deep Learning segmentation uncertainty map visualized in color."
    url: "/assets/images/10.23698/aida/lund-probe/uncPlot.png"
    thumbnail-url: "/assets/images/10.23698/aida/lund-probe/uncPlot-thumbnail.png"
---
## Kernels

Code examples for how to load and visualize the LUND-PROBE data can be found at [https://github.com/jamtheim/LUND-PROBE](https://github.com/jamtheim/LUND-PROBE). Feel free to modify the examples to suit your specific use case.

## File formats
NIfTI

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact the dataset provider for terms of access.

{% include access-request-blurb.md coauthorship="yes" %}

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
