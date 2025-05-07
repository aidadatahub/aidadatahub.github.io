---
title: Deep Synthetic Diagnostic Data
ongoing: true
end:
type: project          # "consultation", or "project"
website:
user-fees: no # yes or no
topics: ai       # "policy", "system-design", "ai".
customer:
  organization: Linköping University
  website: https://liu.se/
  name: Claes Lundström
  email:
blurb: >
  Developing novel data synthesis methods for diagnostic data using state-of-the-art generative models.

---

{% include support-project-header.md %}

In research of AI for medical applications, a widespread problem is a lack of data for training and validating algorithms. For rare diseases, the challenge is particularly severe. To this end, the project aims to develop novel data synthesis methods for diagnostic data. We will build on state-of-the-art methods in image synthesis such as generative adversarial networks and diffusion generative models.

A key idea we will explore is to utilize related data sets as templates for the synthesis. To begin with, within-discipline datasets of different organs/diseases, such as using histopathology imaging from common cancers and normal tissue to synthesize rare cancer training data. We will also explore cross-discipline “related data templates” such as using radiology (primarily high-resolution CT) for histopathology synthesis and introducing connections to genomics data. We will in all method development aim to include uncertainty estimation through, for instance, ensemble approaches.

### Project Plan

**Phase 1: Domain-Specific Fine-Tuning**
- Dataset preparation for Diffusion models fine-tuning
- Fine-tune Diffusion Models (LDM, SD2.1, SD3.5) on pathology dataset
- Evaluate fine-tuned model with FID

**Phase 2: ControlNet Integration**
- Direct ControlNet training (baseline)
- ControlNet with fine-tuned model
- Compare approaches with visual inspection

**Phase 3: Scaling to Larger Images**
- Develop tiling/upscaling techniques
- Test coherence between patches
- Optimize for full-size image generation

**Phase 4: Evaluation Framework**
- Implement FID and standard metrics
- Develop pathology-specific metrics
- Conduct downstream task validation
- Arrange expert evaluation sessions

**Phase 5: Refinement and Specialization**
- Refine models based on evaluation
- Implement uncertainty quantification
- Specialize for target rare diseases
- Final model validation

**Phase 6: Documentation and Publication**
- Finalize methods documentation
- Prepare visualization of results
- Draft research paper
- Internal review and revisions