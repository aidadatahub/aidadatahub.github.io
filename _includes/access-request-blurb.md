{%- assign doi = page.datacite['@id'] | remove: "https://doi.org/" -%}
{%- capture body -%}{% include {{ include.email_template | default: "access-request-email-research.md" }} doi=doi dataset_url=page.datacite.url agreement_template_url=include.agreement_template_url coauthorship=include.coauthorship %}{%- endcapture -%}
You are invited to send an
<a href="mailto:{{ page.datacite.provider[0].email }}?cc={{ page.datacite.provider | slice: 1, 100 | map: "email" | join: "," }}&subject=Requesting%20access%20to%20dataset%20doi:{{ doi }}&body={{ body | url_encode | replace: '+','%20' }}">access request email</a>
from your institutional account.

Clicking the access request email link above should open a draft email message
in a new window, to help you provide relevant information for efficient request
evaluation. If the above link does not work for you, then please click to view the
<a id="request-email-toggle">suggested email text</a>.

<div id="request-email" class="hidden revealable small">
<b>To</b>: {{ page.datacite.provider[0].email }}<br/>
<b>cc</b>: {{ page.datacite.provider | slice: 1, 100 | map: "email" | join: "," }}<br/>  
<b>Subject</b>: Requesting access to dataset doi:{{ doi }}<br/>
{{ body | newline_to_br }}<br/>
Click to <a href="mailto:{{ page.datacite.provider[0].email }}?cc={{ page.datacite.provider | slice: 1, 100 | map: "email" | join: "," }}&subject=Requesting%20access%20to%20dataset%20doi:{{ doi }}&body={{ body | url_encode | replace: '+','%20' }}">create draft email</a> (new window). Use your institutional account.
</div>
<script>
document.querySelector("#request-email-toggle").addEventListener('click', (e) => {
  document.querySelector("#request-email").classList.toggle('hidden')
  })
</script>
