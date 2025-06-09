---
hidden:
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/ctpel"
  name: "Segmented CT pelvis scans with annotated anatomical landmarks"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpel"
  author:
  - name: "Bryan Connolly"
    #"@id": "" # FIXME: missing info
    "@type": "Person"
  - name: "Chunliang Wang"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2019
  copyrightHolder:
  - name: "KTH"
    url: "https://kth.se/"
    "@type": "Organization"
  - name: "Chunliang Wang"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  provider:
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  - name: "Chunliang Wang"
    email: "chunwan@kth.se"
    "@id": "https://orcid.org/0000-0002-0442-3524"
    "@type": "Person"
  dateCreated: "2019-05-03"
  datePublished: "2019-05-03"
  dateModified: "2021-06-24"
  keywords: "Radiology, Annotated, Pelvis, CT, Computed tomography, Anatomical landmarks, Bone segmentation"
  version: "1.1"
  # v1.1: missing landmark annotations now added.
  description: |
    5 bone segmentation masks and 15 annotations of anatomical landmarks for pelvis bones
    in each of 90 Computed Tomography (CT) cases extracted from the
    [CT Lymph nodes](https://wiki.cancerimagingarchive.net/display/Public/CT+Lymph+Nodes) and
    [CT Colonography](https://wiki.cancerimagingarchive.net/display/Public/CT+COLONOGRAPHY)
    collections from the
    [The Cancer Imaging Archive](https://www.cancerimagingarchive.net/) (TCIA).
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpel#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in research or education.
  - name: "AIDA license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/ctpel#aida-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA."
  citation:
  - "@type": "Chapter"
    "@id": "https://doi.org/10.1007/978-3-030-11166-3_5"
    name: |
      Wang C., Connolly B., de Oliveira Lopes P.F., Frangi A.F., Smedby Ö.
      (2019) Pelvis Segmentation Using Multi-pass U-Net and Iterative Shape
      Estimation. In: Vrtovec T., Yao J., Zheng G., Pozo J. (eds)
      Computational Methods and Clinical Applications in Musculoskeletal
      Imaging. MSKI 2018. Lecture Notes in Computer Science, vol 11404.
      Springer, Cham
other:
  shortName: "CTPEL"
  origin: "Clinical"
  status: "Ongoing"
  annotation: |
    Segmentation was done first with an interactive software (Mialab), followed
    by manual inspection and correction using ITKSNAP. The interactive method is
    based on fuzzy connectedness followed by level set method. Both the
    segmentation mask and annotated anatomical landmarks were created by a
    trained radiologist.
  countries-shared:
  - "AU"
  - "BE"
  - "BR"
  - "CA"
  - "CH"
  - "CN"
  - "DE"
  - "DK"
  - "EG"
  - "ES"
  - "FR"
  - "GB"
  - "IN"
  - "IL"
  - "IR"
  - "JP"
  - "KR"
  - "NL"
  - "NO"
  - "PL"
  - "RO"
  - "SE"
  - "TR"
  - "US"
  - "VN"
  
  organ:
  - name: "Pelvis"
    sctid: 12921003 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "" # FIXME: missing data
  bytes: 28000000000
  numberOfScans: 90
  numberOfAnnotations: 1800
  resolution:
  modality:
  - "CT"
  scanner:
  stain:
  phase:
  image:
  exampleImage:
  - title: "Anatomical landmarks of pelvis and femur indicated in a 3d volume rendered image."
    url: "/assets/images/10.23698/aida/ctpel/landmarks.png"
    thumbnail-url: "/assets/images/10.23698/aida/ctpel/landmarks-thumbnail.png"
  - title: "Segmentation masks for femur, pelvis, and vertebra shown in a frontal plane CT image."
    url: "/assets/images/10.23698/aida/ctpel/segmentations.png"
    thumbnail-url: "/assets/images/10.23698/aida/ctpel/segmentations-thumbnail.png"
---
## File formats
DICOM. Please see our help pages for some examples of
[working with DICOM](https://docs.datahub.aida.scilifelab.se/data/working-with-dicom/).

### Importing binary masks to numpy
The dataset contains a DICOM SEG file, which can be converted to an ITK image file (mha, nifti, etc) by using [dcmqi](https://github.com/QIICR/dcmqi) and the command line tool [segimage2itkimage](https://qiicr.gitbook.io/dcmqi-guide/opening/cmd_tools/seg/segimage2itkimage), which is straightforward to read into a numpy array.

### Landmarks
Landmarks are available in the sr.dcm file and saved using the TID 1500 template.

## License
### Controlled access
Free for use in research or education.
Please contact AIDA for terms of access.

{% include access-request-blurb.md email_template="access-request-email-research-or-education.md" %}

### AIDA BY license
#### Segmentation masks and anatomical landmark annotations
Copyright
{{ page.datacite.copyrightYear }}
{{ page.datacite.copyrightHolder | map: "name" |  join: ", " }}

Permission to use, copy, modify, and/or distribute the data within AIDA
(Analytic Imaging Diagnostics Arena https://medtech4health.se/aida) for the
purpose of research or education with or without fee is hereby granted,
provided that the above copyright notice and this permission notice appear in
all copies.

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD
TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN
NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS
ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS
DATA.

## Attribution
In addition to the TCIA rules about using the image data, we would really
appreciate if you include the following references in publications that make use
of the provided segmentation masks or anatomical landmarks:

[1] {{ page.datacite.author | map: "name" | array_to_sentence_string }}
({{ page.datacite.datePublished | date: "%Y" }})
{{ page.datacite.name }}
[doi:{{ page.datacite['@id'] | remove: "https://doi.org/" }}]({{ page.datacite["@id"] }}).

{% for c in page.datacite.citation %}
  [{{ forloop.index | plus: 1 }}]
  [{{ c.name }}]({{c["@id"]}})

{% endfor %}
