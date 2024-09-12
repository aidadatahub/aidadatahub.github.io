<!-- <span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span> -->

<strong>{{ page.blurb }}</strong>

<table class="tight-table">
{% if page.presentation_url -%}
  <tr><td><a href="{{ page.presentation_url }}">Presentation</a></td></tr>
{% endif -%}
{% if page.code_url -%}
  <tr><td><a href="{{ page.code_url }}">Code</a></td></tr>
{% endif -%}


</table>
