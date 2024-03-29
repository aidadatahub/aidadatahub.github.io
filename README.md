# AIDA dataset register
This site provides information on the datasets that have been shared on the AIDA
Data Hub, in the form of machine- and human readable landing pages for Digital
Object Identifiers ([DOI](https://www.doi.org/)) issued for these datasets,
suitable for automated DataCite DOI registration.

Analytic Imaging Diagnostics Arena ([AIDA](https://medtech4health.se/aida)) is a
Swedish arena for research and innovation on artificial intelligence, AI, for
medical image analysis. Here, academia, healthcare and industry meet to
translate technical advances in AI technology into patient benefit in the form
of clinically useful tools.

The most important factor for training world-class AI is access to massive
amounts of high-quality training data.
The [AIDA Data Hub](https://datahub.aida.scilifelab.se/) is a place where
researchers can collaboratively gather, annotate, share and enrich large volumes
of research data for machine learning in medical imaging diagnostics.

Links:

* Website: [https://datahub.aida.scilifelab.se/](https://datahub.aida.scilifelab.se/).
* Source code: [https://github.com/aida-dataset-register/aida-dataset-register.github.io](https://github.com/aida-dataset-register/aida-dataset-register.github.io).

## Adding dataset descriptions

Datasets are added here: [`_datasets/10.23698/aida/`](https://github.com/aida-dataset-register/aida-dataset-register.github.io/tree/master/_datasets/10.23698/aida).
Copy a dataset description similar to yours and edit to fit.

### Example Images

Images are added here: [`assets/images/10.23698/aida/<projectid>/`](https://github.com/aida-dataset-register/aida-dataset-register.github.io/tree/master/assets/images/10.23698/aida/).

Please save a visually pleasing version of each example image at least 1000px
wide, and a small  version cropped to 4:3 aspect ratio and resized to exactly
320x240px in size.

Your first listed example image will be used as an icon for your dataset in the
datset list on the frontpage.

## Localhost Deployment

The is the instruction for the localhost deployment of aidadatahub.github.io in a ubuntu OS. Instructions might vary for MacOS. The main packages required are rbenv, ruby build, ruby 2.7.4 and bundle. It assumes `git` is pre-installed in the system.

Run the following source code to  install required packages to host the aidadatahub.github.io website:
```
source bootstrap.sh
```
The aidadatahub.github.io is running on [http://127.0.0.1:4000](http://127.0.0.1:4000)

# Acknowledements

This site uses [GitHub pages](https://pages.github.com/).

AIDA issues [DataCite](https://datacite.org) DOIs using a prefix provided by the
Swedish National Data Service ([SND](https://snd.gu.se/)).
