Hi!

I work at INSTITUTION in COUNTRY, emailing from my institutional account.

I would like to access the dataset doi:{{ include.doi }}, for use in ethical and legal medical diagnostics research. Could you please send me a data sharing agreement template?

Our planned use of the data can be summarized as:

BRIEF_DESCRIPTION_OF_PLANNED_ACTIVITIES
{% if include.coauthorship %}
We are aware that publications resulting from the use of this data must include indicated authors of this dataset in the author list.
{% endif %}
Dataset: {{ include.dataset_url }}

Example agreement template: {{ include.agreement_template_url | default:"https://datahub.aida.scilifelab.se/sharing/templates/" }}

Template placeholders:

Research PI ("Recipient Scientist"):
Name: PI_NAME (cc here)
Title: PI_TITLE (ph d or better, in relevant field)

Name of institution: INSTITUTION_NAME
Name of department: DEPARTMENT_NAME
Institution postal address: POSTAL_ADDRESS

Authorized signatory (if other than research PI):
Name: SIGNATORY_NAME (cc here)
Title: SIGNATORY_TITLE

The Research PI has a PhD degree or better in a relevant field, and their institutional email address is in CC in this email conversation. The Authorized signatory is the person who signs this type of legal agreement on behalf of this institution, and their institutional email address is in CC in this conversation.

/MY_NAME
