---
title: Referenceless 4D flow
ongoing: false
end: 
type: project          # "consultation", or "project"
website: 
user-fees: no # yes or no
topics: ai       # "policy", "system-design", "ai".
customer:
  organization: Linköping University
  website: 
  name:
  email:
blurb: >
  Support on developing AI training pipeline for referenceless 4D flow

---
<span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span>  
<strong>{{ page.blurb }}</strong>  

{: .tight-table }
| Website:   |  [{{ page.title }}]({{ page.website }}) |
| Ongoing:   | {{ page.ongoing | replace: false, "No" | replace: true, "Yes" }} |
| Start:   |  {{ page.date | date: "%Y-%m-%d" }} |
| End:   |  {{ page.end | date: "%Y-%m-%d" }} |


4D flow is a medical imaging technique that captures blood flow through the body, such as in the heart and aorta, over time. This enables accurate modeling of blood velocity and pressure, making it an invaluable tool for diagnosing various cardiac conditions.

However, the imaging process is time-consuming, which can be challenging for patients. The "Referenceless 4D Flow" project is developing techniques to accelerate 4D flow imaging by using AI-based corrections to replace the traditional reference scan step.

AIDA Data Hub supports this project by assisting with training pipeline development and providing neural network modeling expertise.