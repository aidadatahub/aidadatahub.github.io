---
hidden: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/sprob20"
  name: "Spear Prostate Biopsy Dataset (SPROB20)"
  about: "Pathology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/megre"
  author:
  - name: "Peter Walhagen"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Pontus Röbeck"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Ewert Bengtsson"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Christer Busch"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Michael Häggman"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2021
  copyrightHolder:
  - name: "Michael Häggman"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  - name: "Uppsala University Hospital"
    url: "https://vard.skane.se/skanes-universitetssjukhus-sus/"
    "@type": "Organization"
  provider:
  - name: "Christian Jamtheim Gustafsson"
    email: "Christian.JamtheimGustafsson@skane.se"
    "@id": "https://orcid.org/0000-0003-2931-5615"
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
    2611 scanned prostate biopsies from 460 patient cases sampled between 2015 and 2018. Clinical data and treatment decisions made in connection with biopsy sampling exist on case level. According to metadata, roughly ¼ of the biopsies contain cancer.

  license:
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/megre#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  - "@type": "Article"
    "@id": "https://doi.org/10.1088/1361-6560/abb0f9"
    name: |
      Jamtheim Gustafsson et al (2020), Development and evaluation of a deep
      learning based artificial intelligence for automatic identification of
      gold fiducial markers in an MRI-only prostate radiotherapy workflow.
      Phys. Med. Biol. doi:10.1088/1361-6560/abb0f9
  - "@type": "Article"
    "@id": "https://doi.org/10.1002/mp.12516"
    name: |
      Gustafsson, C., Korhonen, J., Persson, E., Gunnlaugsson, A., Nyholm, T.
      and Olsson, L.E. (2017), Registration free automatic identification of
      gold fiducial markers in MRI target delineation images for prostate
      radiotherapy. Med. Phys., 44: 5563-5574. doi:10.1002/mp.12516
other:
  shortName: "SPROB20"
  status: "Completed"
  annotation: |
    The cases are annotated with clinical data relevant for the treatment decision and the following treatment decision made in conjunction with the biopsy sampling.Each image is given an identifier which can be connected to the case by the case mapping file.
    Clinical data and treatment decisions have been extracted by manual medical records search. The information about treatment is what has been noted in conjunction with the diagnosis and has not been verified further that the treatment actually occurred. 
    Some cases contain missing data in some of the fields as the data wasn’t available. 
    The number of biopsies noted on the case data are not always agreeing with the number of biopsies sampled. This as some biopsies may have been resliced or all biopsies might not have been found.

  countries-shared: # Fixme: insert link to paper in annotation text above when published.
  - "SE"
  organ:
  - name: "Prostate"
    sctid: 41216001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "39 - 79 years, median 67 years"
  bytes: 492 # ~160 GB
  numberOfScans: 2611 # 326 patients, augmented to a total of 652 subjects (x8 echo times) for train/validation dataset. 40 additional patients for a test dataset (x8 echo times).
  caseLevelAnnotaions: "Treatment decision, Gleason, PIRADS, PSA, Prostate volume, T-stage, mm tissue total, mm cancer total, N tot biopsies, N pos biopsies, Fxb status"
  imageLevelAnnotations: "Connection to use"
  numberOfAnnotations: 692 # 652 (x8 echo times) + 40 (x8 echo times)
  resolution: "0.2204 microns per pixel (40x)"
  modality:
  - "MR"
  scanner:
  - "Hamamatsu NanoZoomer S60" # software versions DV25.0R02-1549b and DV26.0R03-1831b
  stain: "H&E"
  phase:
  exampleImage:
  - title: "Biopsies from the dataset"
    url: "/assets/images/10.23698/aida/sprob20/image_1_cropped.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/image_1_cropped.jpg"
  - title: "Biopsies from the dataset"
    url: "/assets/images/10.23698/aida/sprob20/image_2.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/image_2.jpg"
  - title: "Biopsies from the dataset"
    url: "/assets/images/10.23698/aida/sprob20/image_3.png"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/image_3.png"
  - title: "Full resolution patch from one of the biopsies."
    url: "/assets/images/10.23698/aida/sprob20/image_4.png"
    thumbnail-url: "/assets/images/10.23698/aida/sprob20/image_4.png"
---
## Kernels
See github repository for pre-processing and method source code

[https://github.com/jamtheim/MEGRE-Net](https://github.com/jamtheim/MEGRE-Net)

## File formats

Images: Pyramidal.tif

Metadata: .csv

## License
### Controlled access
Free for use in legal and ethical medical diagnostics research.
Please contact the dataset provider for terms of access.

{% include access-request-blurb.md coauthorship="yes" %}

### AIDA BY CA license
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute this data within Analytic
Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) for the
purpose of medical diagnostics research with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies, and that publications resulting from the use of this data cite the
following works:

[{{ page.datacite.citation[0].name }}]({{page.datacite.citation[0]["@id"]}})

{{ page.datacite.author | map: "name" | array_to_sentence_string }}
({{ page.datacite.datePublished | date: "%Y" }})
{{ page.datacite.name }}
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }}).

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.
