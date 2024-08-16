---
title: Data Science Platform
description: A home for your research.
---
Our data science platform offers a home for your research. Our customers include researchers, industry, caregivers and user communitites of national significance.

<!--FIXME maybe all these services should be broken out to separate pages? -->

## Features

* **Data Science Platform**: Computable long term primary storage, supporting advanced usage patterns including data collection, collaboration, visualization, enrichment, annotation, AI training, and federated analysis.

* **Close to flagship compute**: Easy access from large scale national/European compute resources when extreme needs of computation arise.  

* **Sensitive Data Services**: Suitable for research on large amounts of data of extreme confidentiality including biomedical personal data.

* **Customizable security**: The "closed by default and openable as needed" service model lets customers choose a security level appropriate for their processing, to adequately protect the data subjects, while allowing the flexibility necessary for effectively carrying out the planned activities, without affecting other users.

An annual [membership fee](../services#access) provides [base service](#base-service) and [optional services](#optional-services), and ability to procure [add-on services](#add-on-services). The services are described below.

<a class="button" href="../services#access">Get Access &raquo;</a>

## Contact
Our [system design team](../people#economy):
{% include people-topic-table.md topic='system-design-support' %}

Please contact our us for support or more information!

## Base service

{:class="tight-table"}
| Audience: | Everyone             |  
| Cost:     | Please visit [Prices](#prices) |  
| Status:   | Planned.             |

Includes:
* Up to 2 TB private storage quota (no backup) accessible through e.g. Windows file sharing.
* Multifactor login using Life Science Login and your home organization account.
* Access to shared datasets on approval.
* Customer separation. You cannot see other customers, and they cannot see you.
* Customizable security, make security decisions appropriate for your project (e.g. allow connecting to home institution secure servers, collaborators, ...).
* Self-service dashboard and service launcher.
* Sensitive Data Services:
  * SD Desktop (optional)
  * SD Inbox
  * SD Outbox
  * SD Download - sda download?
  * SD Apply - REMS
  * SD Telerad (optional)
  * SD openEHR (optional)

### Optional services

#### SD Desktop

{:class="tight-table"}
| Audience: | Everyone                  |  
| Cost:     | Included in base service. |  
| Status:   | Planned.                  |

Receive DICOM images via telerad from specified scanners.

#### SD Telerad

{:class="tight-table"}
| Audience: | Customers receiving scans from medical imaging modalities. |  
| Cost:     | Included in base service |  
| Status:   | Planned.                 |

Receive DICOM images via telerad from specified scanners.

#### SD openEHR

{:class="tight-table"}
| Audience: | Customers receiving openEHR data. |  
| Cost:     | Included in base service. |  
| Status:   | Planned.                  |

Receive openEHR data from specified sources.

## Add-on services

### SD Large storage

{:class="tight-table"}
| Audience: | Large scale data users. |  
| Cost:     | Please visit [Prices](#prices)  |  
| Status:   | Planned.              |

Larger storage (no backup) than what is included in Basic service.

<!--FIXME Description of storage goes here, if any -->

### SD Primary storage

{:class="tight-table"}
| Audience: | Customers using AIDA Data Hub for primary storage of data. |  
| Cost:     | Please visit [Prices](#prices)  |  
| Status:   | Planned.              |

Storage with backups, guarding against disaster and (some) user error.

(Description of backup goes here; what types of failure is guarded against?).

### SD Infrastructure as a service

{:class="tight-table"}
| Audience: | AI- and data scientists, and systems development experts. |  
| Cost:     | Depends on flavor, please visit [Prices](#prices) |  
| Status:   | Planned.                                |

Multi-factor authenticated SSH connection to private self-managed virtual machines.

Variants:
* CPU compute
* GPU compute
* SLURM Cluster
* Kubernetes pod

### SD Software as a service

{:class="tight-table"}
| Audience: | AI- and data scientists, and systems development experts. |  
| Cost:     | Depends on flavor, please visit [Prices](#prices) |  
| Status:   | Planned.                                |

Secure access to popular web service tools for data analysis.

#### SD Jupyter notebook

{:class="tight-table"}
| Audience: | Researchers.          |  
| Status:   | Planned.              |

Web-based interactive computing platform. Combines live code, equations, narrative text, visualizations, interactive dashboards and other media.

#### SD Cytomine server

{:class="tight-table"}
| Audience: | Pathologists and researchers. |  
| Status:   | Planned.                      |

Open-source web platform for collaborative analysis of very large pathology images and image collections together with machine learning algorithms.

## See also
* [About compute and storage hosting](../about/hosting)
