---
title: AIDA days technical workshop
end: 2024-09-04
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
  AIDA days workshop with technical theme on reproducible machine learning and efficient dataloading.
---
<span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span>  
<strong>{{ page.title }}</strong>  
{{ page.blurb }}

## Day 1: Reproducible Machine Learning Research

{: .tight-table}
| **Presentation** | [Reproducible ML](https://docs.google.com/presentation/d/1qlGOkq6K10NC2-6rzIVRmBoJijhg8OVP/edit#slide=id.p1) |
| **Code** | [Faster data loading with DALI](https://github.com/eryl/aida-dali-workshop) |

A deep dive into automating experiments to achieve both reproducibility and extendability in machine learning research. This session will explore MLFlow, a powerful library for experiment tracking, and cover techniques for configuring experiments and optimizing hyperparameters. Learn how to create machine learning science that not only delivers deterministic reproducibility but also yields generalizable results.

* Strategies for reproducible and extendable research
* In-depth exploration of MLFlow for experiment tracking
* Techniques for flexible experiment configuration and hyperparameter optimization

Who Should Attend: This workshop is tailored for experienced Python users familiar with training machine learning models. While the techniques presented are broadly applicable to any Python-based framework, PyTorch will be used as the primary example.

## Day 2: Model computational optimization

{: .tight-table}
| **Presentation** | [Faster data loading](https://docs.google.com/presentation/d/1LfEJCGOd98Xv6ymymV39ats1zPy0G3XU/edit#slide=id.p1) |
| **Code** | [Faster data loading with DALI](https://github.com/eryl/aida-dali-workshop) |

Address the common bottleneck of data loading in neural network training. This workshop focuses on data augmentation challenges in imaging, with a particular emphasis on medical imaging. Discover how to use NVIDIA's DALI framework to offload data augmentation to the GPU, enhancing training efficiency and reducing processing time.

* Practical implementation of NVIDIA DALI for data loading
* Techniques to optimize GPU usage for faster training
* Solutions to overcome data augmentation bottlenecks

Who Should Attend: Ideal for attendees with experience in training machine learning models using PyTorch Vision. While DALI can be integrated with other frameworks like TensorFlow or Jax, the focus will be on its application with PyTorch.
