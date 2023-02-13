---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/micromen"
  name: "Coregistered H&E- and VEGF-stained histology slides with diffusion tensor imaging data at 200 μm resolution in meningioma tumors"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/micromen"
  author:
  - name: "Jan Brabec"
    "@id": "https://orcid.org/0000-0002-5826-7424"
    "@type": "Person"
  - name: "Elisabet Englund"
    "@id": "https://orcid.org/0000-0002-2708-2443"
    "@type": "Person"
  - name: "Johan Bengzon"
    "@id": "https://orcid.org/0000-0001-6536-2107"
    "@type": "Person"
  - name: "Filip Szczepankiewicz"
    "@id": "https://orcid.org/0000-0002-5251-587X"
    "@type": "Person"
  - name: "Danielle van Westen"
    "@id": "https://orcid.org/0000-0001-8649-9874"
    "@type": "Person"
  - name: "Pia C Sundgren"
    "@id": "https://orcid.org/0000-0001-9237-1236"
    "@type": "Person"
  - name: "Markus Nilsson"
    "@id": "https://orcid.org/0000-0002-3140-8223"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2023
  copyrightHolder:
  - name: "CC BY 4.0"
    url: "https://creativecommons.org/licenses/by/4.0/"
    "@type": "Organization"
  - name: "Markus Nilsson"
    "@id": "https://orcid.org/0000-0002-3140-8223"
    "@type": "Person"
  provider:
  - name: "Jan Brabec"
    email: "brabec.jan@protonmail.com"
    "@id": "https://orcid.org/0000-0002-5826-7424"
    "@type": "Person"
  - name: "Markus Nilsson"
    email: "markus.nilsson@med.lu.se"
    "@id": "https://orcid.org/0000-0002-3140-8223"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2023-02-07"
  datePublished: "2023-02-10"
  dateModified: "2023-02-10"
  keywords: "Microstructural features, mean diffusivity, fractional anisotropy, cell density, cellularity, meningioma, coregistration, hematoxylin & eosin, VEGF"
  version: "1.0.0"
  description: |
    Mean diffusivity (MD) and fractional anisotropy (FA) obtained with diffusion tensor imaging (DTI) have been associated with cell density and tissue anisotropy across tumors, but these associations have been challenged at the microscopic level and several additional histological features have been suggested as contributing to MD and FA.
    To facilitate investigation of the biological underpinnings of DTI parameters, we performed ex-vivo dMRI at 200 μm isotropic resolution on 16 excised meningioma tumor samples. The samples together span a variety of microstructural features: six different meningioma types and two different grades. Diffusion tensor imaging (DTI) was used to produce maps such as MD, FA, in-plane FA (FAIP), axial diffusivity (AD) or radial diffusivity (RD). The maps were coregistered to H&E (hematoxylin & eosin) and VEGF-stained histological slides.

    In this repository, we provide raw and analysed DTI maps coregistered to H&E- and VEGF-stained histology slides, as well as an example analysis of the data that aims to quantify the degree to which cell density (CD), structure anisotropy (SA), as determined from histology, in comparison with convolutional neural network (CNN) account for the intra-tumor variability of MD and FAIP in meningioma tumors. The pipeline used to process the raw DTI data and the coregistration tools are hosted by [GitHub](https://github.com/jan-brabec/microimaging_histology_DIB) and the code related to the our example analysis are available [here](https://github.com/jan-brabec/microimaging_vs_histology_in_meningeomas). Please refer and cite our two journal articles mentioned in the section References below for further information on the processing and if you find this data useful.
    We hope that data can be used in research and education concerning the link between the meningioma microstructure and parameters obtained by diffusion MRI.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/micromen#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/micromen#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution and co-authorship."
  citation:
    #- "@type": "CreativeWork"
    #  "@id": "https://doi.org/..."
    #  name: "Title of paper goes here"
other:
  shortName: "MICROMEN"
  status: "Completed"
  annotation: |
    Histology slides coregistered by landmark-based approach with DTI images of meningioma tumor samples.
  countries-shared:
  - #"FI"
  organ:
  - name: "Brain"
    sctid: 76752008 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "-"
  bytes: 390056006423
  numberOfScans: 16
  numberOfAnnotations: 0
  resolution: "Histology slides 0.5 µm ⤫ 0.5 µm. DTI images: 200 µm x 200 µm x 200 µm."
  modality: "Histology slides: tif and .mat files, DTI images .nii and .mat files"
  scanner: "Bruker 9.4 T BioSpec Avance III MRI scanner. Microscope slide scanner Hamamatsu NanoZoomer S360. The data processed with an in-house DTI pipeline and registration tool available at repositories listed in Kernels."
  stain: "Hematoxylin & Eosin (H&E) and VEGF"
  phase:
  image: "/assets/images/10.23698/aida/micromen/ckae-metastasis-thumbnail.jpeg"
  exampleImage:
  - title: "Diffusion MRI images were coregistered to histology slides."
    url: "/assets/images/10.23698/aida/micromen/1.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/micromen/1_thumbnail.jpeg"
  - title: "Overview of the H&E-stained meningioma histopathology of all sixteen samples."
    url: "/assets/images/10.23698/aida/micromen/2.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/micromen/2_thumbnail.jpeg"
  - title: "Overview of the VEGF-stained meningioma histopathology of all sixteen samples."
    url: "/assets/images/10.23698/aida/micromen/3.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/micromen/3_thumbnail.jpeg"
  - title: "Overview of the coregistered data (sample 10)."
    url: "/assets/images/10.23698/aida/micromen/4.jpeg"
    thumbnail-url: "/assets/images/10.23698/aida/micromen/4_thumbnail.jpeg"
---
## Kernels
The pipeline used to process the raw DTI data and the coregistration tools are available at [https://github.com/jan-brabec/microimaging_histology_DIB](https://github.com/jan-brabec/microimaging_histology_DIB) 

The code related to the our example analysis are available at [https://github.com/jan-brabec/microimaging_vs_histology_in_meningeomas](https://github.com/jan-brabec/microimaging_vs_histology_in_meningeomas).

## File formats
### Pixel position scaling
Coordinates given are relative to the image *width*. To get the correct pixel
position, X coordinates (and Y coordinates!) should therefore be multiplied with
the image *width*.

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
