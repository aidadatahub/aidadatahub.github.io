<!-- <span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span> -->

<strong>{{ page.blurb }}</strong>
<table class="tight-table">
  <tr><td> Website: </td><td><a href="{{ page.website }}">{{ page.title }}</a></td></tr>
{% if page.customer.name -%}
  <tr><td> PI: </td><td><a href="mailto:{{ page.customer.email }}">{{ page.customer.name }}</a></td></tr>
{% endif -%}
  <tr><td> Ongoing: </td><td> {{ page.ongoing | replace: false, "No" | replace: true, "Yes" }} </td></tr>
  <tr><td> Start: </td><td> {{ page.date | date: "%Y-%m-%d" }} </td></tr>
{% if page.end -%}
  <tr><td> End: </td><td> {{ page.end | date: "%Y-%m-%d" }} </td></tr>
{% endif -%}

</table>
