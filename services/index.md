---
title: "AIDA Data Hub Services"
description: "Services provided by the <a href='/'>AIDA Data Hub</a>."
---
We offer leading edge services to researchers in Swedish medical imaging AI, in
collaboration with the Analytic Imaging Diagnostics Arena ([AIDA](/about/aida)),
the Center for Medical Image Science and Visualization
([CMIV](https://liu.se/cmiv)), and the [SciLifeLab](https://scilifelab.se)
Bioinformatics Platform ([NBIS](https://nbis.se)) and
[Data Center](https://scilifelab.se/data).

One example is the [AIDA DGX-2 Service](#dgx-2) which is currently the
largest national GPU resource for processing sensitive personal data for
research in Sweden. Further exampes are introduced in overview sections below.

* TOC
{:toc}

These services are offered to AIDA partners. All Swedish organizations active in
medical imaging diagnostics or AI are invited to [become a member of AIDA](/about/aida#join).

## AIDA DGX-2 Service {#dgx-2}
AIDA Data Hub is collaborating with [Nvidia](https://nvidia.com) to operate a
[DGX-2 machine learning system](https://www.nvidia.com/en-us/data-center/dgx-2/)
at [CMIV](https://liu.se/cmiv), as a service for leading edge AI researchers in
Swedish medical imaging diagnostics, secure enough for use with sensitive
personal data. We believe that these experts will produce the best results if
given the freedom to exercise their expertise according to their best judgement.

<img alt="Nvidia DGX-2 Machine learning system" src="/assets/images/dgx-2.png" width="40%" class="right"/>

The service was established in a phased approach, opening for research use
immediately on its delivery day of 2020-03-05, and from then on adding further
features, stability, and guarantees in stages. The final step to full production
was taken on 2020-11-09, when it was approved for use with sensitive personal data.

The service is set up to conform with [Linköping University](https:/liu.se/)
information security guidelines for systems intended for processing information
of extreme confidentiality, in collaboration with Linköping University Data
Protection Officers. System security was validated using international
penetration testing expertise.

Service is offered to AIDA partners, in compute projects, based on
[Data Processing Agreements](https://docs.google.com/document/d/1sGc8K7Q3sTTwCIYPhmvA8GHN0gb8cic1km8wwXuvWbI/edit#),
or [Servcice Agreements](https://drive.google.com/file/d/12AOYf8boZoOu5HUXaXPjQd641tMprzdz/view)
for anonymous data. Project members get full access to private project VMs and
persistent storage through personal VPN accounts, and use secure SSH pubkeys to
SSH to VMs and SFTP to storage. Outgoing connections are limited and appoved
based on feasibility, where IP:PORT is easiest, and distributed services over
CDN are harder. Storage/VMs are granted based on availability
(cf [booking sheet](https://docs.google.com/spreadsheets/d/1wA7H3Uh53ADVYptiQWXROnMD67HvPOAwSvW20EnzlFM/edit#gid=254337069)).
Projects work with own private data. AIDA Data Hub [Datasets](/datasets) are
pre-mounted on request. Projects cannot access resources belonging to other
projects.

VMs run latest v4.x Nvidia DGX OS, have multiple Nvidia V100 GPUs on PCI
passthrough, and mount project storage over 10Gbit connection with FSC to local
NVMe raid.

More information on the [AIDA internal wiki](#wiki)
[DGX-2 page](https://scilifelab.atlassian.net/wiki/spaces/aida/pages/1235189793/AIDA+DGX-2+Service).

## AIDA Nextcloud {#nextcloud}
<img alt="AIDA nextcloud" src="/assets/icons/aida-icon.png" width="20%" class="right" style="margin-top: -2ex;"/>

AIDA Data hub uses [nextcloud.aida.scilifelab.se](https://nextcloud.aida.scilifelab.se)
to allow AIDA Partners to share anonymous research data with the world. Offered
in collaboration with the [SciLifeLab](https://scilifelab.se)
[Data Center](https://scilifelab.se/data).

For sharing non-anonymous data, please see the [AIDA DGX-2 Service](#dgx-2) above.

More information on the [AIDA internal wiki](#wiki)
[Nexcloud page](https://scilifelab.atlassian.net/wiki/spaces/aida/pages/1239678997/Nextcloud).

### Sharing large amounts of data
We recommend using the nextcloud client, or [rclone.org](https://rclone.org) with the WebDAV interface.
Always use the latest version. Both nextcloud and rclone develop fast.

AIDA users can access their data through their WebDAV url, on the form:

`https://nextcloud.aida.scilifelab.se/remote.php/dav/files/USERNAME/`

For share links, use the url:

`https://nextcloud.aida.scilifelab.se/public.php/webdav`

The `USERNAME` is then the last part of the link, i.e:

`https://nextcloud.aida.scilifelab.se/s/USERNAME`

## AIDA PACS {#pacs}
<img alt="Picture Archive and Communication System" src="/assets/images/pacs.png" width="30%" class="right" style="margin-top: -2ex; transform: scaleX(-1);"/>

AIDA offers access to a cloud-based production grade
[Picture Archive and Communication System](https://aida.medtech4health.se/ids7/) (PACS)
with both a desktop client (Windows) and a web client for viewing and interacting
with image data. The AIDA PACS can be used by AIDA Partners to explore different
integration opportunities, annotate data and perform reader studies. Please reach
out to [AIDA](mailto:aida@nbis.se) for access and further information.
Provided by AIDA.

## AIDA Wiki {#wiki}
AIDA uses an [AIDA Confluence space](https://scilifelab.atlassian.net/wiki/spaces/aida)
as an internal wiki, for documentation and internal materials. Offered in
collaboration with [SciLifeLab](https://scilifelab.se).

AIDA partners get accounts
[on request](mailto:aida@nbis.se?subject=New%20AIDA%20wiki%20account%3F&body=Hi!%0D%0A%0D%0ACan%20I%20please%20have%20an%20AIDA%20wiki%20account%3F%0D%0A%0D%0AName%3A%20...%0D%0AAffiliation%3A%20...%0D%0AEmail%3A%20...%20(cc%20here)%0D%0A%0D%0A%2FMY_NAME).
Click the link, or remember to provide name, affiliation and email address
in your request!

## AIDA GitHub {#github}
AIDA uses an [AIDA Team](https://github.com/orgs/NBISweden/teams/aida/) in the
[SciLifeLab](https://scilifelab.se) [Bioinformatics Platform](https://nbis.se)
(NBIS) GitHub account to facilitate code sharing and co-development in AIDA.
Members can create public or private repos to admin themselves, and easily share
with AIDA, NBIS, invited external parties, nobody, or the world.

Examples of AIDA-internal repositories include training materials from AIDA coding
workshops, and PACS integration examples in pathology and radiology. Because of
size limitations, Some large
[AI training data](https://nextcloud.aida.scilifelab.se/apps/files/?dir=/AIDA/Training%20materials&fileid=31886)
from AIDA coding workshops are made available on [AIDA nextcloud](#nextcloud)
instead.

More information on the [AIDA internal wiki](#wiki)
[Nexcloud page](https://scilifelab.atlassian.net/wiki/spaces/aida/pages/1239678997/Nextcloud).

## AIDA Slack {#slack}
The primary channel to all-to-all support and discussion in AIDA.
AIDA uses [SciLifeLab](https://scilifelab.se) [Bioinformatics Platform](https://nbis.se)
(NBIS) Slack:

* [#aida-dgx2](https://nbisweden.slack.com/archives/C01S39EQ9S9): AIDA DGX-2 chat - Tech support and general discussion on the AIDA DGX-2 service!
* [#aida-announce](https://nbisweden.slack.com/archives/C01S6HPGYAX): AIDA Announcements - Progress in medical imaging diagnostics AI!
* [#aida-general](https://nbisweden.slack.com/archives/C01S6HASR5Z): AIDA General chat - Everything AI in medical imaging diagnostics!

More information on the [AIDA internal wiki](#wiki)
[Chat page](https://scilifelab.atlassian.net/wiki/spaces/aida/pages/1239285826/Chat).
