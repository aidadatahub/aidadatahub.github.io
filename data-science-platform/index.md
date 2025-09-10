---
title: Data Science Platform
description: A home for your research.
---
Our data science platform offers a home for your research. It is a Swedish national, publicly owned and secure cloud service for research and innovation in data driven precision health. Our customers include researchers, industry, caregivers and user communities of national significance.

<!--FIXME maybe all these services should be broken out to separate pages? -->

{:.no_toc}
## Features

* **Data Science Platform**: Computable long term primary storage, supporting advanced usage patterns including data collection, collaboration, visualization, enrichment, annotation, AI training, and federated analysis.

* **Close to flagship compute**: Easy access from large scale national/European compute resources when extreme needs of computation arise.

* **Sensitive Data Services**: Suitable for research on large amounts of data of extreme confidentiality including biomedical personal data.

* **Customizable security**: The "closed by default and openable as needed" service model lets customers choose a security level appropriate for their processing, to adequately protect the data subjects, while allowing the flexibility necessary for effectively carrying out the planned activities, without affecting other users.

An annual [membership fee](../services#access) provides [base service](#base-service) and [optional services](#optional-services), and ability to procure [add-on services](#add-on-services). The [services](#services) are described below.

<a class="button" href="../services#access">Get Access &raquo;</a>

{:.no_toc}
## See also
* [Hardware information](hardware)
* [Server hosting](../about/hosting)
* [Documentation](/docs#data-science-platform)
* Usage example: [Spawning GPU Virtual Machine](https://docs.datahub.aida.scilifelab.se/dsp/examples/gpu-iaas/)

{:.no_toc}
## Services
* toc
{:toc}

## Base service

{:class="tight-table"}
| Audience: | Everyone             |  
| Cost:     | Please visit [Prices](../services#prices) |  
| Status:   | Planned.             |

Including:
* One or multiple secure environments for collaboration on sensitive data, for use under the control of one customer activity (ie: one research group, one clinic, etc). 
* 2 TB private network storage quota (no backup).
* CPU compute up to the value of the yearly fee, according to the price list.
  * GPU compute available as an add-on service.
* Multifactor login using Life Science Login and your home organization account.
* Access to shared datasets on approval.
* Customer separation. You cannot see other secure environments, and they cannot see yours.
* Customizable security, make security decisions appropriate for your project (e.g. allow connections to home institution servers and collaborators).
* Self-service dashboard.
* Onboarding support.

## Add-on Services

### Large Compute

{:class="tight-table"}
| Audience: | Everyone             |  
| Cost:     | Please visit [Prices](../services#prices) |  
| Status:   | Available    

More compute resources than what is included in the Base Service. 

### Large Storage

{:class="tight-table"}
| Audience: | Everyone             |  
| Cost:     | Please visit [Prices](../services#prices) |  
| Status:   | Available   

Larger storage (no backup) than what is included in the Base Service.

### Primary Storage

{:class="tight-table"}
| Audience: | Customers using AIDA Data Hub for primary storage of data |  
| Cost:     | Please visit [Prices](../services#prices) |  
| Status:   | Planned

Storage with backups, guarding against disaster and (some) user error.


## Optional services

### Infrastructure as a Service

{:class="tight-table"}
| Audience: | AI- and data scientists, and systems development experts |  
| Cost:     | Included in the Base Service |  
| Status:   | Available

Multi-factor authenticated SSH connection to private self-managed virtual machines.

### Remote Desktop

{:class="tight-table"}
| Audience: | Everyone |  
| Cost:     | Included in the Base Service |  
| Status:   | Planned

Access through a secure remote desktop.

### Software as a Service

{:class="tight-table"}
| Audience: | AI- and data scientists, and systems development experts |  
| Cost:     | Included in Base service |  
| Status:   | Planned                  |

Secure access to popular web service tools for data analysis. Consider combining with Large Compute if you need more compute resources than what is included in the Base Service. 

- #### Jupyter Notebook

  {:class="tight-table"}
  | Audience: | Researcher |  
  | Status: | Planned  |               

  Web-based interactive computing platform. Combines live code, equations, narrative text, visualizations, interactive dashboards and other media.

- #### Cytomine Server

  {:class="tight-table"}
  | Audience: | Pathologists and researchers |  
  | Status:   | Planned             |

  Open-source web platform for collaborative analysis of very large pathology images and image collections together with machine learning algorithms.



### Telerad Import

{:class="tight-table"}
| Audience: | Customers receiving scans from medical imaging modalities |  
| Cost:     | Included in Base Service |  
| Status:   | Planned                 |

Receive DICOM images via telerad from specified scanners.

### openEHR Import

{:class="tight-table"}
| Audience: | Customers receiving openEHR data |  
| Cost:     | Included in Base Service |  
| Status:   | Planned                  |

Receive openEHR data from specified sources.


{:.no_toc}
## Contact
Our [system design team](../people#economy):
{% include people-topic-table.md topic='system-design-support' %}

Please contact us for support or more information!
