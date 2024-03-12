---
hidden: no
datacite:
  "@context": "http://schema.org"
  "@type": "Dataset"
  "@id": "https://doi.org/10.23698/aida/megre"
  name: "Multi-echo gradient echo (MEGRE)"
  about: "Radiology"
  url: "https://datahub.aida.scilifelab.se/10.23698/aida/megre"
  author:
  - name: "Christian Jamtheim Gustafsson"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
  publisher:
    "@type": "Organization"
    name: "AIDA"
  copyrightYear: 2020
  copyrightHolder:
  - name: "Skånes Universitetssjukhus"
    url: "https://vard.skane.se/skanes-universitetssjukhus-sus/"
    "@type": "Organization"
  - name: "Christian Jamtheim Gustafsson"
    "@id": "https://orcid.org/0000-0003-2931-5615"
    "@type": "Person"
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
  keywords: "Gold fiducial marker, MRI only, Radiotherapy, MRI radiation therapy, Prostate, Cancer, Radiology, Annotated"
  version: "1.2.0"
  # 1.2.0: Paper now published. References & license wording updated.
  description: |
    Multi-echo gradient echo (MEGRE) MRI data with 8 different echo times
    (2.38-23.6 ms) from 326 + 40 prostate cancer patients with gold fiducial
    markers inserted into the prostate (train/validation + test dataset).
    A scientific paper that utilizes this dataset for deep learning has been
    [published](https://doi.org/10.1088/1361-6560/abb0f9).
    Underlying description of the technique and its first use has been described
    in a [previous publication](https://www.ncbi.nlm.nih.gov/pubmed/28803447).

    The data contains an image volume for each patient, for each echo time. The
    center of mass from the three inserted prostate gold fiducial markers was
    manually defined. The ground truth label for this dataset consist of
    spherical objects with a radius of 1-12 mm, inserted in the center of mass
    defined locations. Method in the paper uses 9 mm radius.
  license:
  - name: "Controlled access"
    id: "https://datahub.aida.scilifelab.se/10.23698/aida/megre#controlled-access"
    "@type": "CreativeWork"
    abstract: |
      Free for use in legal and ethical medical diagnostics research.
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
  shortName: "MEGRE"
  origin: "Clinical"
  status: "Completed"
  annotation: |
    For 100 out of the 326 patients in the train/validation dataset the MEGRE
    images were annotated in MATLAB where the center of mass (CoM) coordinates of
    the gold fiducial marker signal voids were defined by one observer. For the
    remaining 226 of the patients in the train/validation dataset and the 40
    patients in the test dataset MEGRE images, echo number one or two was
    exported to the treatment planning system Eclipse v.15.1 where the CoM
    points of the gold fiducial marker signal voids were defined by multiple
    observers and exported as DICOM RT-structures. Further details on this are
    provided in an article currently in review for publication. All fiducial
    identifications were confirmed to be correct using the corresponding CT
    images.
  countries-shared: # Fixme: insert link to paper in annotation text above when published.
  - "SE"
  - "UY"
  organ:
  - name: "Prostate"
    sctid: 41216001 # SNOMED-CT https://termbrowser.nhs.uk/?perspective=full&conceptId1=%s
  age-span: "49-85"
  bytes: 160305002394 # ~160 GB
  numberOfScans: 366 # 326 patients, augmented to a total of 652 subjects (x8 echo times) for train/validation dataset. 40 additional patients for a test dataset (x8 echo times).
  numberOfAnnotations: 692 # 652 (x8 echo times) + 40 (x8 echo times)
  resolution: "Scan resolution 2.8x1.46x1.46 mm, reconstructed to 0.47x0.47x2.8 mm. Each patient has 28-34 slices with 512x512 image matrix." # 2.8 mm scan slice thickness and an in-plane scan resolution of 1.46 mm x 1.46 mm (reconstructed to 0.47 mm x 0.47 mm), yielding an image matrix size of 512x512 with 28 to 34 slices for each patient and each echo.
  modality:
  - "MR"
  scanner:
  - "GE Discovery 750w 3T" # software versions DV25.0R02-1549b and DV26.0R03-1831b
  stain:
  phase:
  image: "/assets/images/10.23698/aida/megre/image3-thumbnail.png"
  exampleImage:
  - title: "Pelvic transversal MEGRE image displaying an example of the first echo."
    url: "/assets/images/10.23698/aida/megre/image1.jpg"
    thumbnail-url: "/assets/images/10.23698/aida/megre/image1-thumbnail.png"
  - title: "MEGRE images obtained using eight echo times, from 2.38 to 23.6 ms, for two different patients."
    url: "/assets/images/10.23698/aida/megre/image2.png"
    thumbnail-url: "/assets/images/10.23698/aida/megre/image2-thumbnail.png"
  - title: "The 3D binary mask viewed as an image segmentation overlaid on the MEGRE images, seen in orthogonal views for echo 1."
    url: "/assets/images/10.23698/aida/megre/image3.png"
    thumbnail-url: "/assets/images/10.23698/aida/megre/image3-thumbnail.png"
---
## Kernels
See github repository for pre-processing and method source code

[https://github.com/jamtheim/MEGRE-Net](https://github.com/jamtheim/MEGRE-Net)

## File formats
Compressed NIfTI (.nii.gz) file format for both images and ground truth segmentations. The data contains an image volume for each patient, for each echo time.

Data augmentation was performed for each of the 326 patients with random image rotations in an interval between -15 to 15 degrees around the superior-inferior patient axis using linear interpolation. Image data for each echo for each patient time was handled separately but subjected to the same amount of rotation. The same rotation was applied to the ground truth labels using nearest neighbor interpolation (to avoid producing non-binary mask values). The augmented data and labels for each patient data was saved as a new subject, producing a total of 652 subjects in the train/validation dataset, which equaled a total of 1946 fiducial objects. No data augmentation was performed for the test data set containing 40 patients.

All image data for all echos in all datasets was independently N4 bias field corrected in an image pre-processing pipeline.

Train/validation data set and ground truth label:  
XXXXXXXXX = Real patients  
XXXXXXXXXAug = Augmented data

Test data set and ground truth label:  
XXXXXXXXXtest= real patients  

One patient had four fiducial markers inserted and was excluded in the deep learning study (in review). This patient has suffix \_4fid in its name. Each patient volume for each echo in test data set was subjected to Z-score normalization after N4 bias field correction.

Folder names:  
Patients40processedN4v2Normalized for Test Data  
Patients326processedPooledAugN4v2 for Training/Validation Data

Folder structure for image files:  
echo_1/ XXXXXXXXX_echo-1.nii.gz  
echo_2/ XXXXXXXXX_echo-2.nii.gz  
…  
echo_8/ XXXXXXXXX_echo-8-nii.gz

Folder structure for ground truth files:  
GT1/ XXXXXXXXX_coords.nii.gz  
GT2/ XXXXXXXXX_coords.nii.gz  
…

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
