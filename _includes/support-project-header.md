<span class="small">{{ page.date | date: "%Y-%m-%d" }}{% if page.end %} - {{ page.end }}{% endif %}</span>  
<strong>{{ page.blurb }}</strong>  

{: .tight-table }
| Website:   |  [{{ page.title }}]({{ page.website }}) |
{% if page.customer.name %}| PI:   |  [{{ page.customer.name }}](mailto:{{ page.customer.email }}) |{% endif -%}
| Ongoing:   | {{ page.ongoing | replace: false, "No" | replace: true, "Yes" }} |
| Start:   |  {{ page.date | date: "%Y-%m-%d" }} |
| End:   |  {{ page.end | date: "%Y-%m-%d" }} |
