---
title: AIDA days technical workshop
end: 2025-09-17
highlight: yes
reporting:
  type: "workshop" # "course", or "workshop" (aka: Conferences, symposia, seminars and workshops)
  unit: "AIDA Data Hub" # 1. Name of reporting unit* (choose from drop-down menu)
  email: "erik.ylipaa@liu.se" # 2. Your e-mail address* 	
  title: "AIDA Days technical workshop" # 3. Full name of the course/activity*
  co-organizer: "The reporting unit was the main organizer" # 4a. Did the reporting unit organize or co-organize the course?* : "The reporting unit was a co-organizer", or "The reporting unit was the main organizer". 	
  with-whom: "KTH" # 4b. If co-organized, with whom?
  start-date: 2025-09-16
  end-date: 2025-09-17
  location: "Online"
  participants: # 8. Nr of participants*
  comments:     # 9. Additional comments
blurb: >
  AIDA days workshop with technical theme on federated learning and the MAIA collaborative medical AI platform.
---
<span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span>  
<strong>{{ page.title }}</strong>  
{{ page.blurb }}

## AIDA Technical workshop September 16 - Federated Learning for data driven precision health

{: .tight-table}
| **Presentation** | [Federated Learning](https://docs.google.com/presentation/d/1PN0AcA-4Ypr192hie5KEzZobZWXxBeiD/edit?usp=sharing&ouid=116285713938211495704&rtpof=true&sd=true) |
| **Code** | [AIDA Technical Days Federated Learning Example](https://github.com/eryl/aida-fl-workshop) |

AI progress is often driven by massive datasets, but clinical data is tightly regulated and cannot be freely shared. Federated learning offers a way forward: instead of pooling sensitive data in one place, models are trained collaboratively across data holders, sharing only model parameters while keeping the data private. In this workshop we’ll explore the motivations, core approaches, frameworks, and challenges of applying federated learning to sensitive health data. 

## AIDA Technical workshop September 17 - MAIA: A Collaborative Medical AI Platform for Radiology Research, Clinical Integration and Federated Learning

{: .tight-table}
| **Presentation** | [MAIA Workshop Presentation](https://simonebendazzoli93.github.io/MAIA-AIDA-TechDays-Workshop) |
| **Code** | [Github tutorial code](https://github.com/SimoneBendazzoli93/MAIA-AIDA-TechDays-Workshop) |


The MAIA platform, developed at KTH’s Division of Biomedical Imaging and validated in collaboration with Karolinska University Hospital, supports integration of AI into clinical radiology workflows. In this workshop we will demonstrate MAIA’s key functionalities: connecting to PACS for DICOM retrieval, preprocessing imaging data, training and monitoring segmentation models, and deploying them for inference. We will also highlight MAIA’s active learning features and its support for federated learning, enabling multi-institutional collaboration while preserving data privacy.
