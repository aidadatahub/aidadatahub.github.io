---
hidden: yes
synthetic: yes
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/synthetic/shbamri"
  name: "Synthetic healthy brain aging MRIs with segmentation masks"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/synthetic/shbamri"
  author:
  - name: "Jingru Fu"
    "@id": "https://orcid.org/0000-0003-4175-395X"
    "@type": "Person"
  - name: "Antonios Tzortzakakis"
    "@id": "https://orcid.org/0000-0001-7563-732X"
    "@type": "Person"
  - name: "José Barroso"
    #"@id": "https://orcid.org/0000-0001-7563-732X"
    "@type": "Person"
  - name: "Eric Westman"
    "@id": "https://orcid.org/0000-0002-3115-2977"
    "@type": "Person"
  - name: "Daniel Ferreira"
    "@id": "https://orcid.org/0000-0001-9522-4338"
    "@type": "Person"
  - name: "Rodrigo Moreno"
    "@id": "https://orcid.org/0000-0001-5765-2964"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2023
  copyrightHolder:
  - name: "KTH"
    url: "https://www.kth.se/"
    "@type": "Organization"
  - name: "Jingru Fu"
    "@id": "https://orcid.org/0000-0003-4175-395X"
    "@type": "Person"
  - name: "KTH"
    url: "https://www.kth.se/"
    "@type": "Organization"
  - name: "Rodrigo Moreno"
    "@id": "https://orcid.org/0000-0001-5765-2964"
    "@type": "Person"
  provider:
  - name: "Jingru Fu"
    email: "jingruf@kth.se"
    "@id": "https://orcid.org/0000-0003-4175-395X"
    "@type": "Person"
  - name: "Rodrigo Moreno"
    email: "rodmore@kth.se"
    "@id": "https://orcid.org/0000-0001-5765-2964"
    "@type": "Person"
  - name: "Daniel Ferreira"
    email: "daniel.ferreira.padilla@ki.se"
    "@id": "https://orcid.org/0000-0001-9522-4338"
    "@type": "Person"
  - name: "AIDA Data Hub"
    email: "aida-data@nbis.se"
    "@id": "https://datahub.aida.scilifelab.se"
    "@type": "Organization"
  dateCreated: "2023-12-01"
  datePublished: "2023-12-01"
  dateModified: "2023-12-01"
  keywords: "Radiology, Annotated, Brain, MRI, Synthetic, Brain aging, Synthetic brain aging, Medical image generation"
  version: "1.0.0"
  description: |
    This dataset is a collection that includes the 6448 synthetic aging brain T1 MRI scans derived from two data sets by our proposed methodology (the following paper [1] (https://datahub.aida.scilifelab.se/10.23698/aida/synthetic/shbamri#references)). We augmented the HEALTHY longitudinal brain MRI data with corresponding segmentations to simulate the access of a scan per subject every 6 months in these cohorts.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/synthetic/shbamri#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research and education.
  - name: "AIDA BY license"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/synthetic/shbamri#aida-by-license"
    "@type": "CreativeWork"
    abstract: "Free for use within AIDA with attribution."
  citation:
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.1002/hbm.26165"
    name: "Fast 3D image generation for healthy brain aging using diffeomorphic registration. Fu, Jingru and Tzortzakakis, Antonios and Barroso, José and Westman, Eric and Ferreira, Daniel and Moreno, Rodrigo and for the Alzheimer's Disease Neuroimaging Initiative, 2022. doi: 10.1002/hbm.26165"
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.1101/2019.12.13.19014902"
    name: "OASIS-3: Longitudinal Neuroimaging, Clinical, and Cognitive Dataset for Normal Aging and Alzheimer Disease. Pamela J LaMontagne, Tammie L.S. Benzinger, John C. Morris, Sarah Keefe, Russ Hornbeck, Chengjie Xiong, Elizabeth Grant, Jason Hassenstab, Krista Moulder, Andrei Vlassenko, Marcus E. Raichle, Carlos Cruchaga, Daniel Marcus, 2019. medRxiv. doi: 10.1101/2019.12.13.19014902"
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.1002/jmri.21049"
    name: "The Alzheimer's disease neuroimaging initiative (ADNI): MRI methods. Jack Jr C R, Bernstein M A, Fox N C, et al. Journal of Magnetic Resonance Imaging: An Official Journal of the International Society for Magnetic Resonance in Medicine, 2008, 27(4): 685-691."
  - "@type": "CreativeWork"
    "@id": "https://doi.org/10.3389/fninf.2013.00049"
    name: "Muehlboeck J S, Westman E, Simmons A. TheHiveDB image data management and analysis framework[J]. Frontiers in neuroinformatics, 2014, 7: 49. doi: 10.3389/fninf.2013.00049"
other:
  shortName: "SHBAMRI"
  origin: "Synthetic"
  status: "Completed"
  annotation: |
    All original segmentations were collected by using FreeSurfer (aparc+aseg.mgz). Synthetic images are segmented based on ground truth segmentations using registration, more information can be found in [1] (https://datahub.aida.scilifelab.se/10.23698/aida/synthetic/shbamri#references).
  countries-shared:
  - "SE"
  organ:
  - name: "Brain"
    sctid: 12738006
  age-span: "" 
  bytes: 52400000000
  numberOfScans: 6448
  numberOfAnnotations: 6448
  resolution: 160x160x192, 1X1X1 mm
  modality:
  - "MR"
  scanner:
  stain:
  phase:
  image:
  exampleImage:
  - title: "Sample images and the corresponding segmentation masks."
    url: "/assets/images/10.23698/aida/shbamri/SHBAMRI-1-SampleImagesMasks.png"
    thumbnail-url: "/assets/images/10.23698/aida/shbamri/SHBAMRI-1-SampleImagesMasks-thumbnail.png"
  - title: "The sample brain aging MRI images for a healthy subject from age 51.7 to age 63.7. (Figure 10 from [1])"
    url: "/assets/images/10.23698/aida/shbamri/SHBAMRI-2-Img2.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/shbamri/SHBAMRI-2-Img2-thumbnail.jpg"
---
## License
### Controlled access
Free for use in legal and ethical medical diagnostics research and education.
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
