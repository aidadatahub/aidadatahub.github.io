---
title: "Documentation"
description: "How to get better use out of the AIDA Data Hub."
---
This page contains links to documentation that can help you get better use out
of the AIDA Data Hub.

Contents:
* TOC
{:toc}

## Working with DICOM<span id="dicom"/>
Digital Imaging and Communications in Medicine
([DICOM](https://www.dicomstandard.org/))
is the international standard to transmit, store, retrieve, print, process, and
display medical imaging information. It is prevalent in
[radiology](/datasets/search/?q=Subject:Radiology) and is gaining traction also in
[pathology](/datasets/search/?q=Subject:Pathology).

Some [datasets](/datasets) on the [AIDA Data Hub](/) are provided in DICOM format.
In DICOM, data is provided in nested and interlinking structures, which can be
nontrivial for newcomers to the field to navigate.

For an introduction to how one can work with DICOM data, AIDA is providing a
Jupyter notebook, which is publicly available through the
[SciLifeLab](https://www.scilifelab.se/)/[NBIS](https://nbis.se/)
[GitHub organization](https://github.com/orgs/NBISweden):

[https://github.com/NBISweden/dicom-data-visualizer](https://github.com/NBISweden/dicom-data-visualizer)

## Download a dataset from AIDA Nextcloud using rclone {#example}

Example:

It takes two commands to download a dataset from a Nextcloud share link:

1. [Setup a remote](#setup)
2. [Download from the remote](#download)

### Setup a remote {#setup}
`rclone config create drsk webdav url=https://nextcloud.aida.scilifelab.se/public.php/webdav vendor=nextcloud user=<USERNAME> pass=<PASSWORD>`

Here, we have chosen the name `drsk` for the remote. You can of course choose whatever name you want. Probably use something short that doesn't contain spaces.

Your username is the last part of the share link you got from us, i.e: `https://nextcloud.aida.scilifelab.se/s/USERNAME`

Your username could for example be something like `Y4gVyiVyyiF6fug`.

Your password is the string of random characters you got from us separately. You will probably need to "quote" or 'quote' it on the command line, as it very likely contains special characters.

If you'd rather answer questions interactively, do this instead, and do what it says: `rclone config`

The exact questions may differ depending on what version rclone you have.

### Download from the remote {#download}

Use the same name here that you chose in the previous step.

`rclone copy drsk: .`

Or if you want progress written to the terminal:

`rclone copy --progress drsk: .`
