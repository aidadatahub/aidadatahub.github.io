---
title: Distributed training with Ray Toolkit 
type: workshop          # "workshop", or "presentation"
code_url: https://github.com/eryl/aida-ray-workshop
subject: ai # ai, policy, clinical
presentation_url: https://docs.google.com/presentation/d/1CvhixnEHg4_OO1VeHV70KK0JktXwgaZn/edit?usp=drive_link&ouid=100286706807109821169&rtpof=true&sd=true
video_url:
blurb: >
  Workshop on scalable and distributed machine learning using Ray
---

{% include training-event-header.md %}

As available compute capacity for training AI is rapidly increasing the question of how to best use it as a researcher arises. While distributing the training of a single model is supported by frameworks like Pytorch, it can be difficult to scale this up in clinical applications due to limited datasets. In this workshop we will instead explain how the Ray toolkit can be used to scale up the number of models we train with the goal of improving statistical significance of our deep learning results in training processes like cross validation and hyper parameter tuning.

- Scalable training strategies using Ray across multiple models
- Techniques for improving robustness via cross-validation and tuning
- Practical usage of Ray for orchestrating distributed ML workflows

Who Should Attend: Attendees should understand machine learning concepts, particularly distributed training and hyperparameter tuning, be proficient in Python, and have basic knowledge of cloud computing.