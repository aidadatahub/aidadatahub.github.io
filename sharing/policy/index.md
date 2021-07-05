---
image: "https://medtech4health.se/wp-content/uploads/2018/01/AIDA-banner-smal.jpg"
title: "AIDA Data Sharing"
description: "Policies and guidelines for AIDA activities in data sharing."
---

<span style="font-size: smaller;">[AIDA Data Hub](/) &nbsp;&raquo;&nbsp; [AIDA Data Sharing Policy](/sharing/)</span>

AIDA supports data sharing in the following ways:

1.  [AIDA data hub sharing](#aida-data-hub-sharing), which is the primary mode of data sharing in AIDA.
2.  [Large-scale data exports](#large-scale-data-exports) from clinical production systems.
3.  [Selective sharing](#selective-sharing) only with specified research groups.
4.  [Support to ethical review applications](#support-to-ethical-review-applications-in-research) that include data sharing aspects.
5.  [Facilitating data sharing outside of AIDA](#facilitating-data-sharing-outside-of-aida).

This is described in further detail in the sections below. The corresponding internal processes are described in a separate document [AIDA Data sharing routines](https://docs.google.com/document/d/1FOb9YD_w_8SabCAbfWXHuKwAwhPyFBPKlVWuOTTwBF0/edit#) which is updated continuously.

Contents:

* TOC
{:toc}

## Getting access

AIDA is a collaboration between partners in healthcare, academia and industry. AIDA shares data primarily within AIDA (cf [Personal data and legal basis](#personal-data-and-legal-basis) below), however researchers outside of AIDA can become part of AIDA, for example by engaging in an AIDA funded activity such as a [project](https://medtech4health.se/aida-en/innovation-projects/), [fellowship](https://medtech4health.se/aida-en/fellowships/) or [clinical evaluation](https://medtech4health.se/aida-en/apply-for-clinical-evaluation/), or by becoming [network partner](https://medtech4health.se/aida-en/network-partner/). The membership fee for network partners is low, but some fee is important as a means to establish that a meaningful commitment has been made. It can be waived if the network partner contributes by other means, for example by [sharing prioritized data](#aida-data-hub-sharing).

## Personal data and legal basis

AIDA engages in research and innovation using data mainly from medical imaging, and thus has an obligation under the general data protection regulation (GDPR) to adequately safeguard the privacy of the individuals concerned. For this reason -and to protect against for example mistakes in large scale anonymization- AIDA engages in data sharing for research only when it is ethically approved, and when a contractual agreement is in place that includes non-disclosure of data, such as AIDA partner contracts. More details including the [AIDA definition of anonymous data](https://docs.google.com/document/d/1TvjTeoUiqaafnBQGaJDjHcFCUBfhiKmUTWJG_bkGIWs/edit#heading=h.i639kmr8va6o) can be found in the [AIDA GDPR policy 1.0](https://docs.google.com/document/d/1TvjTeoUiqaafnBQGaJDjHcFCUBfhiKmUTWJG_bkGIWs/edit). For research activities where it is not possible to use anonymous data, AIDA also provides secure services for processing sensitive personal data, as specified in data processing agreements.

## Roles

AIDA uses the following roles in relation to sharing datasets:

*   **Author**: The list of persons who are credited with the work in producing the dataset, be it in defining the selection criteria, or gathering, structuring, enriching, or annotating the data, or for leading or funding the work. This is comparable to the list of authors in an academic publication.
*   **Copyright holder**: The legal entity holding the copyright ("upphovsrätt") to the dataset. This is normally given by the approved ethical review application ("godkänd etikprövingsansökan") for the research project, as the research institution ("forskningshuvudman") represented by a named competent researcher ("ansvarig forskare") under whose supervision the research activities -such as this data sharing- are taking place.
*   **Contact**: Contact points for information on the dataset and for access requests. This can be any person, but usually it is a good idea to include at least the first author, the copyright holder, and some contact person from AIDA for redundancy such as the data director.

## Tools

### AIDA DGX-2 service

AIDA operates a [DGX-2](https://www.nvidia.com/en-us/data-center/dgx-2/) system as a secure service for leading edge researchers in AIDA. It can be used for AI training and [data hub sharing](#aida-data-hub-sharing).

The AIDA DGX-2 service can be used with medical personal data for research using a data processing agreement, or with anonymous data using a service agreement.

### AIDA PACS

The AIDA Picture Archive and Communication System (PACS) is available here:

[https://aida.medtech4health.se/ids7/](https://aida.medtech4health.se/ids7/)

The AIDA PACS is the primary tool for data storage, visualization, interaction and sharing in AIDA. AIDA members can contact an [AIDA system administrator](mailto:aida-data-director@medtech4health.se) to upload data, or download data for more advanced analyses.

AIDA has chosen a PACS as its main tool for interacting with data, since a PACS is what medical imaging diagnostics professionals use as their main tool for their everyday work in the clinic, and is therefore what imaging diagnostics AI products must integrate well with in order to feasibly add value to clinical practice. Using a PACS in this way ensures that clinicians can easily remain involved throughout any AIDA supported development activity, so that requirements can be actively driven by clinical perspective, from research idea, through implementation in a CE-marked medical device, to clinical evaluation and procurement for use in diagnosis of patients. We believe that engaging across the full value chain and connecting it in every step to as unfalsifiable needs and consequences as possible, will contribute to more relevant research and innovation, and higher impact from more reproducible science, as well as better outcomes for patients.

The AIDA PACS can presently be used only with anonymous data.

### File sharing

The AIDA Nextcloud service for self-service file sharing is available here:

[https://nextcloud.aida.scilifelab.se/](https://nextcloud.aida.scilifelab.se/)

AIDA members can use the AIDA Nextcloud file sharing service to store and share data with other AIDA members and with the world.

The AIDA Nextcloud service can presently be used only with anonymous data.

### Tools for large-scale data exports

AIDA supports and can share tools for large-scale data exports from clinical production systems in medical imaging. Please see [large-scale data exports](#large-scale-data-exports) below.

## AIDA data hub sharing

The AIDA data hub is the primary means of data sharing in AIDA. It is used for legal and ethically approved research data sharing (cf [Personal data and legal basis](#personal-data-and-legal-basis) above). AIDA covers costs for sharing prioritized data on the AIDA data hub.

A typical scenario for AIDA data hub sharing is that a research institution as copyright holder for the prioritized research data contacts an [AIDA system administrator](mailto:aida-data-director@medtech4health.se) to share the data on the data hub for use within AIDA under specific licensing terms. Thereby, the data is seen as a resource that is accessible to AIDA partners for use within AIDA.

This is in line with what we perceive as [common practice in the use of clinical imaging data for research in Sweden](context#common-practice-in-the-use-of-clinical-imaging-data-for-research) (cf above). The ethical and legal context around this common practice is discussed in the [Legal discussion](../legal/) section.

Please see the following sections for details:

1.  [AIDA dataset register](#aida-dataset-register) - Citability and public exposure for shared datasets.
2.  [Modes of access](#modes-of-access)
3.  [Scope and priorities](#scope-and-priorities)
4.  [AIDA data sharing licenses](#aida-data-sharing-licenses) - Commonly used terms for sharing.

### AIDA dataset register

The AIDA Data Hub website holds a register that shows public information on the datasets that have been shared on the AIDA data hub, and is available here:

[https://datahub.aida.scilifelab.se/datasets](https://datahub.aida.scilifelab.se/datasets)

The AIDA dataset register is used to advertise shared datasets, and to make shared datasets citable in academic research papers using Digital Object Identifiers (DOI). See [Visibility, citability, and digital object identifiers](#visibility-citability-and-digital-object-identifiers) below for more details.

### Modes of access

AIDA members can visually inspect and interact with the data that they have access to through the [AIDA PACS](#aida-pacs). For use in more advanced analyses within the dataset's sharing license, a working copy can be obtained on request to an [AIDA system administrator](mailto:aida-data-director@medtech4health.se). Copyright holders will be notified of the use, but will be asked to approve the use if they have expressly requested this.

Data shared on the AIDA data hub is by default available either in full or in part, and shall in the interest of OpenScience be made available in full on request to the copyright holder.

### Scope and priorities

AIDA can cover costs for sharing, extraction and enrichment of prioritized data on the AIDA data hub.

[AIDA data priorities](https://datahub.aida.scilifelab.se/prio) are continuously set by the [AIDA data hub clinical council](https://medtech4health.se/aida/organisation/), to enable development of those AI tools that will best meet the needs of current and future clinical practice. The data priorities are being continuously updated based on current data hub composition and identified clinical needs. Please [contact the AIDA data director](mailto:aida-data-director@medtech4health.se) for proposals for data extraction or to suggest further data acquisition topics.

### Visibility, citability, and digital object identifiers

The [AIDA dataset register](https://datahub.aida.scilifelab.se/datasets) is used to advertise and provide information on datasets that have been shared on the data hub, and to make them citable in academic research papers using Digital Object Identifiers ([DOI](https://www.doi.org/)). This helps promote OpenScience, and helps make shared datasets more Findable, Accessible, Interoperable and Reusable ([FAIR](https://www.go-fair.org/))

AIDA acknowledges that data collection and preparation is an important part of any data science endeavor, and that recognizing it as such will stimulate further sharing, which will lead to more impactful research and improved patient benefit.

DOIs work by means of the global [DOI system](https://doi.org/), such that following a DOI link for a dataset will always take you its official landing page, which holds the latest updated information on that dataset.

Example: 10.23698/aida/ctpa → [https://doi.org/10.23698/aida/ctpa](https://doi.org/10.23698/aida/ctpa)

AIDA has its own [DOI prefix](https://search.datacite.org/works?query=snd.aida) provided by [DataCite](https://datacite.org) through the Swedish National Data Service ([SND](https://snd.gu.se/en)), and has made the data hub and its datasets discoverable through the global [re3data.org](https://www.re3data.org) registry of research data repositories, here: [AIDA data hub on re3data](https://www.re3data.org/repository/r3d100013031).

### AIDA data sharing licenses

For data hub sharing of anonymous data, AIDA recommends using one of the license types that are enumerated in decreasing preference here and further described below:

1.  AIDA BY license.
2.  AIDA license.
3.  AIDA CA / AIDA BY CA license (for limited time and until first publication).

If the terms of these licenses are not suitable for a specific case of sharing, then the copyright holder is welcome to contact AIDA to agree on more suitable terms for sharing.

#### AIDA license

The AIDA license is adapted from the succinct, understandable and permissive [ISC license](https://opensource.org/licenses/ISC) commonly used in open source software, but modified here to allow use only for medical diagnostics research and only within AIDA. This restriction is a safeguard against mistakes, for example in large scale anonymization, which may otherwise lead to privacy breach.

Example:

Copyright \<Year> \<Copyright holder>

Permission to use, copy, modify, and/or distribute this data within AIDA (Analytic Imaging Diagnostics Arena [https://medtech4health.se/aida](https://medtech4health.se/aida)) for the purpose of medical diagnostics research with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS DATA.

#### AIDA BY license

AIDA recommends the AIDA BY license for most cases of data hub sharing, for reasons described in the section on [Visibility, citability, and digital object identifiers](#visibility-citability-and-digital-object-identifiers) above.

The AIDA BY license type builds on the AIDA license (cf [above](#aida-license)) and adds attribution requirements on publications resulting from the use of the data, for example by citing the dataset and related papers and/or including an acknowledgement text.

Example:

Copyright \<Year> \<Copyright holder>

Permission to use, copy, modify, and/or distribute this data within AIDA (Analytic Imaging Diagnostics Arena [https://medtech4health.se/aida](https://medtech4health.se/aida)) for the purpose of medical diagnostics research with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies, and that publications resulting from the use of this data \<OPTIONAL: include the following acknowledgement text “...” and> cite the following publications:

\<This dataset>

\<Paper 1>

\<Paper 2>

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS DATA.

#### AIDA CA license

Note: Only recommended by AIDA for limited time and until first publication.

The AIDA CA license type builds on the AIDA license (cf [above](#aida-license)) and adds a requirement that publications resulting from the use of this data include (specified) dataset authors in the author list.

AIDA only promotes using this license for limited time and for datasets where data collection is actively ongoing, such that the dataset authors can be seen to make a clear contribution to the publication. The intended effect is to increase and reward early sharing, and to stimulate forming new research collaborations, which may influence aspects of data collection toward greater generalizability to support further lines of research inquiry. Once an AIDA CA licensed dataset has been used in a publication, AIDA recommends changing the license to no longer require co-authorship, but rather citations or similar, in line with good OpenScience research tradition and ethics.

Example:

Copyright \<Year> \<Copyright holder>

Permission to use, copy, modify, and/or distribute this data within AIDA (Analytic Imaging Diagnostics Arena [https://medtech4health.se/aida](https://medtech4health.se/aida)) for the purpose of medical diagnostics research with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies, and that publications resulting from the use of this data include the authors of this dataset \<optional: NN, NN, and NN> in the author list.

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS DATA.

#### AIDA BY CA license

Note: Only recommended for limited time and until first publication.

The AIDA BY CA license type is a combination of the AIDA BY and AIDA CA licensing terms.

Example:

Copyright \<Year> \<Copyright holder>

Permission to use, copy, modify, and/or distribute this data within AIDA (Analytic Imaging Diagnostics Arena [https://medtech4health.se/aida](https://medtech4health.se/aida)) for the purpose of medical diagnostics research with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies, and that publications resulting from the use of this data include the authors of this dataset \<optional: NN, NN, and NN> in the author list and \<optional: include the following acknowledgement text “...” and> \<optional: cite the following publications:

\<This dataset>

\<Paper 1>

\<Paper 2>

THE DATA IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS DATA INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR CHARACTERISTICS OF THIS DATA.

## Large-scale data exports

AIDA can support large-scale exports of medical imaging data for research. Researchers and caregivers are welcome to [contact AIDA](mailto:aida-data-director@medtech4health.se) with any questions relating to this matter.

Such exports are often problematic for caregivers and research institutions for practical reasons since data may be large, possibly sensitive, and hard to transfer without affecting the performance of networks and equipment that may be critical for patient well-being.

Engaging with AIDA for large scale exports can be a way for caregivers to ensure that a well understood regulatory compliant procedure is used, and that critical operations will not be disrupted.

The recommended process is to transfer the data for [AIDA data hub sharing](#aida-data-hub-sharing) if possible, to enable more research groups to ethically and legally utilize the data in further research, thereby generating more value for research and the clinic for the same effort spent in data extraction.

AIDA can also support exports for [selective sharing](#selective-sharing) if data hub sharing is not possible.

AIDA also offers advice and shares tools to support exports to other destinations.

## Selective sharing

AIDA members can upload anonymous data to the AIDA platform, and can choose to share data selectively with other specified research groups in AIDA at own cost. This can be done either through the [AIDA PACS](#aida-pacs) by request to an [AIDA system administrator](mailto:aida-data-director@medtech4health.se), or by using the AIDA self-service [file sharing](#file-sharing) service.

## Support to ethical review applications in research

AIDA can give support to researchers in drafting ethical review applications that cover data sharing in medical imaging diagnostics. The section on [Ethical data sharing](../ethics/) holds some suggestions on language that can be used. Researchers are welcome to [contact AIDA](mailto:aida-data-director@medtech4health.se) with any questions relating to this matter.

An approved ethical review application defines the framework for what is allowed activities in most research on humans and personal data. The [Legal discussion](../legal/) discusses the legal/ethical context around this. Applications are submitted in Swedish to the Swedish Ethical Review Authority ("etikprövningsmyndigheten", [EPM](https://etikprovningsmyndigheten.se/)). The mechanisms for submission have varied. Some of the sections are relevant for data sharing.

## Facilitating data sharing outside of AIDA

AIDA can support researchers who as copyright holders wish to share their research data outside of AIDA, and can facilitate contacts between data requesters and copyright holders for data sharing options outside of AIDA.

AIDA can facilitate data transfers from AIDA systems to recipients based on instructions from the copyright holder. AIDA can also advise and share tools for data sharing.

AIDA also provides lightweight [data sharing agreement templates](../templates/#data-sharing-agreements) that can be used as a starting point by copyright holders looking to set up agreements for legal and ethical sharing outside of AIDA.

Copyright holders may also choose to delegate handling of access requests to AIDA, by signing a data transfer agreement with AIDA to specify how sharing is to be carried out. AIDA provides [data transfer agreement (DTA) templates](../templates/#data-transfer-agreements) that can be used for this purpose.

### Access request evaluation

Most often, datasets are shared on the AIDA Data Hub for use in ethical and
legal medical diagnostics research. The copyright holder is responsible for
establishing the eligibility of access requests, but can delegate this
responsibility to AIDA using a [data transfer agreement (DTA)](../templates/#data-transfer-agreements).

This section describes the general reasoning behind how AIDA evaluates access requests.  

The goal of the evaluation is usually to establish whether it will be possible
for the provider to sign a data sharing agreement with the requestor, for
example using an [AIDA data sharing agreement template](../templates). Whether
the request can be approved most often depends on the exact language used in the
ethical review approval for the research project that generated the data.
Requests are thus most commonly evaluated similarly as [EPM](https://etikprovningsmyndigheten.se/)
would. Key concepts include "research institution" ("forskningshuvudman") and
"competent researcher" ("ansvarig forskare"). For context and links to further
reading, please cf the [Legal discussion](../legal/), specifically [this
paragraph](../legal/#research-institution).

In short: The recipient should have proven capability to carry out medical
diagnostics research.

For this, two questions should initially be answered satisfactorily:

1. **What research institution in what country is making the request?**  
This research
institution will be responsible for safeguarding the data, according to its own
policies and (inter-)national data protection regulations. Typically, this
should be a university. AIDA's view is that research can also be carried out at
companies, however companies may need to motivate in more detail how their
planned activities can be considered research.

2. **What researcher will be responsible for overseeing the research activities?**  
This
researcher should have necessary qualifications and competence to ensure the
research activities are carried out according to policies and regulations at 1)
above. Typically, this person should be affiliated with 1) above, and have a Ph
d degree (or better academic qualifications) in a relevant field.

#### Examples of where data sharing has not been possible

AIDA has encountered some cases where it has not been possible to approve an
access request or to sign a data sharing agreement.

This can for example involve cases where:

1. It has not been possible to engage an authorized signatory on behalf of the
recipient research institution.
2. It has not been possible to engage a recipient scientist holding sufficient
research qualifications to oversee the research activities, e.g. for lack of a
Ph d degree, convincing publication track record, or sufficiently closely
related field of expertise.  
3. It has not been possible to engage a suitable recipient scientist,
at the recipient research institution.
4. The recipient research institution is neither a university nor convincingly
active in the field of medical imaging diagnostics research (often in
combination with one or more of the above factors).
