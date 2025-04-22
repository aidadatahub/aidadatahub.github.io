---
title: AIDA days technical workshop
end: 2025-02-06
highlight: yes
reporting:
  type:         # "course", or "workshop" (aka: Conferences, symposia, seminars and workshops)
  unit: AIDA Data Hub # 1. Name of reporting unit* (choose from drop-down menu)
  email:        # 2. Your e-mail address* 	
  title:        # 3. Full name of the course/activity*
  co-organizer: # 4a. Did the reporting unit organize or co-organize the course?* : "The reporting unit was a co-organizer", or "The reporting unit was the main organizer". 	
  with-whom:    # 4b. If co-organized, with whom?
  start-date:   # 5. Start date* (yyyy-mm-dd)
  end-date:     # 6. End date* (yyyy-mm-dd) 	
  location:     # 7. Location (city) of the course*
  participants: # 8. Nr of participants*
  comments:     # 9. Additional comments
blurb: >
  AIDA days workshop with a technical focus on scalable AI training and secure local deployment of generative models for clinical applications.
---
<span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span>  
<strong>{{ page.title }}</strong>  
{{ page.blurb }}

## Day 1: Distributed training with Ray Toolkit

{: .tight-table}
| **Presentation** | [Distributed training with Ray](https://docs.google.com/presentation/d/1CvhixnEHg4_OO1VeHV70KK0JktXwgaZn/edit?usp=drive_link&ouid=100286706807109821169&rtpof=true&sd=true) |
| **Code** | [AIDA Ray workshop](https://github.com/eryl/aida-ray-workshop) |

As available compute capacity for training AI is rapidly increasing the question of how to best use it as a researcher arises. While distributing the training of a single model is supported by frameworks like Pytorch, it can be difficult to scale this up in clinical applications due to limited datasets. In this workshop we will instead explain how the Ray toolkit can be used to scale up the number of models we train with the goal of improving statistical significance of our deep learning results in training processes like cross validation and hyper parameter tuning.
* Scalable training strategies using Ray across multiple models
* Techniques for improving robustness via cross-validation and tuning
* Practical usage of Ray for orchestrating distributed ML workflows

Who Should Attend: Attendees should understand machine learning concepts, particularly distributed training and hyperparameter tuning, be proficient in Python, and have basic knowledge of cloud computing.

## Day 2: Easy to use Generative AI

{: .tight-table}
| **Presentation** | [Generative AI](https://docs.google.com/presentation/d/1cVzi-cDjtH0fdV2dy9rPK976uKoisR_v/edit?usp=drive_link&ouid=100286706807109821169&rtpof=true&sd=true) |
| **Code** | [AIDA Generative AI workshop](https://github.com/NBISweden/aida-genai-workshop) |

While Generative AI offers immense utility across various domains, they are often offered as cloud services which renders them unsuitable for handling sensitive medical data. This workshop focuses on empowering users to locally deploy generative AI for both text and image-based tasks. Participants will learn how to set up and use local language models for text understanding, a workflow which can be used on sensitive datasets in secure environments. Additionally, we will explore leveraging existing image generation frameworks with graphical tools like ComfyUI to precisely control synthetic data generation. The workshop will emphasize containerized solutions, providing a practical introduction to using Docker for managing and deploying software applications.
* Local deployment of generative AI for text and image generation
* Introduction to ComfyUI for customizable image synthesis
* Using Docker for secure and reproducible AI workflows

Who Should Attend: Attendees should have a basic understanding of AI concepts, including generative AI and its applications, as well as some experience with Python programming. Familiarity with Docker and containerized applications is recommended but not required.
