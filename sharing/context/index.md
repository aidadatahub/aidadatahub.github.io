---
image: "https://medtech4health.se/wp-content/uploads/2018/01/AIDA-banner-smal.jpg"
title: "AIDA Data Sharing Context"
description: "Law, ethics, and protections in sharing clinical imaging data for research in Sweden."
---
<span style="font-size: smaller;">[AIDA Data Hub](/) &nbsp;&raquo;&nbsp; [AIDA Data Sharing Policy](/sharing/)</span>

This section provides an overview and general considerations on law, ethics, and protections in sharing clinical imaging data for research in Sweden.

Contents:

* TOC
{:toc}

## Common practice in the use of clinical imaging data for research {#common-practice}

Keywords below link to relevant sections in the [Legal discussion](../legal/) with reference to official sources:

In brief, the common practice is that [caregivers](../legal/#caregiver) [disclose](../legal/#disclose) data to [research institutions](../legal/#research-institution) for specific activities described in approved [ethical review applications](../legal/#ethical-review-application), to be carried out under appropriate technical and organizational [protective measures](../legal/#protective-measures) and supervised by a named [competent researcher](../legal/#competent-researcher). The research institution is then [data controller](../legal/#data-controller) and [copyright holder](../legal/#copyright-holder) for the disclosed data, and is responsible for ensuring that data is processed and shared only as described in the approved ethical review application, with [data processing agreements](../legal/#data-processing-services-and-the-cloud), [pseudonymization](../legal/#pseudonymization), [anonymization](../legal/#anonymization) and [licensing](../legal/#license) as tools, and with an obligation to store relevant data for 10 years after last use for purposes of [research validation](../legal/#research-validation).

## Legal bases

The general data protection regulation ([GDPR](https://www.imy.se/verksamhet/dataskydd/det-har-galler-enligt-gdpr/introduktion-till-gdpr/dataskyddsforordningen-i-fulltext/)) regulates all processing of personal data in Europe, and allows countries to adopt national legislation in specific well-defined areas. Healthcare and research are two such areas.

Clinical imaging data is typically collected to provide care for patients. However, Swedish patient data law ([PDL](https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/patientdatalag-2008355_sfs-2008-355#K2P4)) allows caregivers to also use it for other legally specified purposes if needed, for example for improving quality and safety of care, administration, planning, follow-up, evaluation, overseeing, and to produce healthcare statistics.

[GDPR Article 5 §1 b](https://www.imy.se/verksamhet/dataskydd/det-har-galler-enligt-gdpr/introduktion-till-gdpr/dataskyddsforordningen-i-fulltext/#A5) also allows this data to be used for research, for example at universities or companies. The ethical/legal framework surrounding these activities is complex, however the take-home message is that most research is allowed, if only it can be properly motivated. (And the obvious corollary: if it cannot, then it is not).

The [Legal discussion](../legal/) section discusses this in more depth with reference to original sources in law.

## Appropriate technical and organizational protective measures

As we can see in the [Legal discussion](../legal/) section and its discussion on [protective measures](../legal/#protective-measures), despite detailed data protection guidelines and support functions, many of the implementational details regarding how to properly protect personal data are still left to the individual researcher to resolve. This is to a large part due to the nature of research itself, whose mission it is to investigate the unclear and to learn the unknown, which makes it hard for anyone to usefully advise researchers on how to best protect the data that they themselves are the most intimately acquainted with and our foremost experts on.

Researchers can to some degree find support from data protection officers, institutional policies, and in policy documents such as this, and perhaps more in the approval of ethical review applications (that they themselves likely wrote!) but detailed questions like "can this data be considered anonymous?", and "are these protective measures appropriate?" must by necessity be answered finally by the researchers themselves.

There are however two encouraging consequences arising from this: while the ethical/legal framework surrounding these activities is complex, most research is actually allowed if only it can be properly motivated. And the obvious corollary: if it cannot, then it is not.

More on this in the [Ethics and protective measures in research on clinical data](#ethics-and-protective-measures-in-research-on-clinical-data) section below.

### General notes

GDPR lists principles for protection, including purpose limitation (only for specified legal purposes), data minimization (only use relevant and necessary data), storage minimization (do not keep longer than necessary), and integrity and confidentiality (technical and organizational measures). It also suggests using encryption and pseudonymization when suitable. Also, GDPR requires that protective measures must be appropriate given state-of-the-art, and be followed up to ensure that this remains true over time.

It is a good practice to review each processing step in the data flow all the way from source through research to archival for research validation, and look for opportunities to apply these principles and protective measures, taking care not to choose protective measures that hinder research activities that foreseeably could add significant value to individuals and society, such as data sharing to enable further research.

For example: Must identifying data be sent, or is it possible to pseudonymize or even anonymize at the source? Can this data be anonymized for publications? Can this data be shared for further research? If it is pseudonymized? If it is anonymized? Do I really need all these different types of data to answer the research questions in this project, or could I do it with less?

But also: Are there more research questions I could potentially answer if I could get access to more types of data in the same extraction process, for example for ruling out that certain factors contribute to disease, and could that add significant value to individuals and society without significant increase in risk and effort?

And especially: At what points would it be possible for me to introduce protective measures that could significantly reduce risk without significantly hindering useful research?

### Informational protective measures

It is very easy to protect data that no longer exists. These measures concern identifying points where data or parts of data can be pseudonymized, anonymized or even deleted.

Pseudonymization entails processing data so that it no longer can be attributed to a natural person, without the use of additional information (eg: a key) which is to be kept secret and separate. Anonymization entails deleting that key. It is nontrivial to assess the quality of pseudonymization/anonymization.

The [AIDA definition of anonymous data](https://datahub.aida.scilifelab.se/sharing/AIDA-GDPR-policy-v1.0.pdf) is described in AIDA GDPR policy 1.0. The section on [Anonymization examples](../anonymization/) describes what AIDA considers correct anonymization in medical imaging using examples from the [AIDA dataset register](https://datahub.aida.scilifelab.se/datasets) along with rationale to support researchers trying to choose appropriate anonymization methods for their own datasets.

Even in cases where an image is inarguably anonymous, it may still be potentially sensitive information and identifiable through its associated data, like diagnosis, lab analysis data, time stamps, patient age and sex and so on. This problem is not unique to the medical field, and alot of work has already been done to clarify how such data can be anonymized effectively. The Finnish social science data archive have produced a very good guide on [anonymization and personal data](https://www.fsd.uta.fi/aineistonhallinta/en/anonymisation-and-identifiers.html) in research, including [anonymization techniques](https://www.fsd.uta.fi/aineistonhallinta/en/anonymisation-and-identifiers.html#bases-of-anonymisation) (please search in-page).

Techniques (please see the [FSD guide on anonymization techniques](https://www.fsd.uta.fi/aineistonhallinta/en/anonymisation-and-identifiers.html#bases-of-anonymisation) for details):

1.  **Removing variables, values and units of observation**
2.  **Recoding variable values**  
    Specify region rather exact location, represent age not with birth date but as "number of years" or give as ranges appropriately large given the data, eg 1, 2-3, 4-6, 7-10, or 11+ years, etc...
3.  **Editing responses in open-ended variables**     
    Remove specific names, addresses etc in provided free-text information. Replace with \[higher education\], \[sports\], \[identifier removed\], etc...
4.  **K-anonymity and L-diversity**  
    Choose anonymization techniques that ensure that at least *K* (preferably at least 3, or 5-10) individuals are represented for each possible set of indirectly identifying attributes, and that there are at least *L* (preferably at least 2) values for each sensitive attribute. This ensures that specific sensitive characteristic cannot be attributed to an individual, or a whole group of similar individuals.
5.  **Noise addition**     
    Add small additive or proportional noise to numbers, like age, starting time of treatment, inter-examination time intervals, etc...
6.  **Permutation**  
    Scramble values of attributes among individuals. This preserves statistical characteristics within each variable on its own, but it no longer becomes possible to study correlations between variables.

A similar guide aimed at the general public has been produced by the UK information commissioner's office: [ICO anonymization code of practice](https://ico.org.uk/media/1061/anonymisation-code.pdf). Implications for UK administrative data research have also been [published](https://www.sciencedirect.com/science/article/pii/S0267364918300153).

Examples: Can I extract data from a random subset of individuals rather than the complete population? Can I pseudonymize after linking data from different sources? Can I delete the identifying raw data? Can I adequately protect any encryption keys used for the raw data? Can I delete them?

### Organizational protective measures

This entails demonstrating limiting access to only the authorized people, limiting the number of authorized people, having suitable information security policies, ensuring appropriate competencies and compliance, having necessary agreements in place, not using third party services that cannot give sufficient legal and technical guarantees for safeguarding the data, etc.

Examples: Can the pseudonymization key be kept in a safe, only accessible to senior project management? Can we implement project separation, so that researchers who are engaged in several projects cannot mix data from different projects by mistake? Can we use only systems operated by public authorities such as a university, which are bound by public access to information and secrecy law (OSL)? Do we have access to any systems that have already been deemed secure enough for this processing? If we must use a cloud provider or other third party for processing, can we choose a national one? Who procured it and deemed it safe for use with this kind of data, and on what basis? Does the data processing agreement cover all necessary processing? Can we guarantee that all who access data has affirmed their identity at some point, for example by showing their passport at employment or account generation? Are they required by law or legally binding contract to not disclose data ("tystnadsplikt")?

### Technical protective measures

To be effective, modern research makes frequent and powerful use of staggeringly complex technical systems (such as computers and networks) which can be made to function in weird and wondrous ways. The set of technical protective measures possible to employ is therefore similarly diverse and complex, as this concerns security in depth at many abstraction levels, and where the devil truly is in the details. Most of these measures concern limiting attack surfaces to what is necessary and possible to follow up. Commonly employed tools are encryption and access control.

Examples:

* **Transmissions**: Can we encrypt our transmissions to protect against eavesdropping? Is it more safe to send the data over a secured network connection than sending it by mail?
* **Authentication and authorization**: Can we send access credentials over separate connections to protect against impersonation? Can we use multi-factor authentication (username, password, project name, client certificates, verification codes by sms or TOTP, separate VPN login, etc...)? Can we use one-time or time dependent passwords to protect against replay attacks? Can we keep access logs and monitor them for irregularities?
* **Networking**: Can we restrict the IP ranges that can access the systems? Can we limit the attack surface by limiting the number of services on open network ports? Can we close down everything, and then open only what we explicitly need? Can we limit Internet access to protect against malicious code? Can we disallow outgoing connections altogether? (And then open only what we explicitly need, eg for security updates)?
* **Systems**: Can we reduce the attack surface by limiting the number of softwares and systems and modes of use? Can we ensure all software is from trusted sources and continuously security patched?
* **Storage**: Can we encrypt data at rest to protect against theft? Can we use encrypted disks such that they cannot be read if removed from the computer? Can we use disk retention clauses (eg document and destroy broken hardware on premise rather than returning it) to reduce the risk of unlawful data recovery off-premise?
* **Encryption**: Can I ensure only strong-enough encryption is used for this data? How can I demonstrate that encryption keys are adequately protected.

## Ethics and protective measures in research on clinical data

As noted in the preceding section, it is a good practice to choose protective measures such that they do not hinder research activities that foreseeably could add significant value to individuals and society.

Taking data sharing in medical imaging research as an example: extraction of clinical imaging data for research requires significant effort from caregivers that could be otherwise be spent treating the sick, so there exists a solid ethical argument that once extracted we have a moral obligation to use the data as well as we can, as extensively as possible, and in as many research projects as possible, in order to give the best possible value to individuals and society in the present and future for the effort invested.

Such a stance of course requires that researchers take every care to employ excellent and appropriate protective measures to reduce any resulting risk to individuals and society. This balancing of risk against public interest and protective measures put in place is what is evaluated in an ethical review application to the Swedish ethical review authority ("etikprövningsmyndigheten", EPM). If the researcher successfully defends their choices, the application is approved and provides a framework for what research activities are legally and ethically allowed.

There is however a danger of needlessly limiting the research activities by overspecifying them in the ethical review application.

Taking statistical processing as an example: the exact equations used are perhaps less important than the fact that "advanced statistical methods" will be used, and neither of these perhaps constitute risks that need to be defended with special protective measures in an ethical review application. Rather, it may be more pertinent to state that the exact choice of statistical method is preliminary, and then go on to describe what systems will be used to process the data and who will have access to them, how the data will be sent there, how long it will be kept, and how results will be extracted.

If it turns out that potentially valuable research activities (such as data sharing to enable further research) are not explicitly covered by language in the approved ethical review application, the researcher can seek support for these activities by motivating them in a change application to the EPM, which normally takes less time and effort than a full review.

The key lesson is to identify what are risks, and what are not risks, choose protective measures to counteract the risks, specify them, and motivate the choices. Another important take-home message is that it can sometimes be more ethical to aim higher.

The [AIDA definition of anonymous data](https://datahub.aida.scilifelab.se/sharing/AIDA-GDPR-policy-v1.0.pdf) is described in AIDA GDPR policy 1.0. The section on [Anonymization examples](../anonymization/) describes what AIDA considers correct anonymization in medical imaging using examples from the [AIDA dataset register](https://datahub.aida.scilifelab.se/datasets) along with rationale to support researchers trying to choose appropriate anonymization methods for their own datasets.

The section on [Ethical data sharing](../ethics/) holds examples of language in ethical review applications to support data sharing in research.
