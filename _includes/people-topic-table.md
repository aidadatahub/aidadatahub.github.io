<div class="dataset-table">
  <table>
    {% assign topic = include.topic %}
    {% assign sortkey = "topics." | append: topic %}
    {% assign people = site.people | sort: sortkey,'last' %}
    {% for p in people %}
      {% if p.active %}
        {% if include.active  == "inactive" %}{% continue %}{% endif %}
      {% elsif include.active != "inactive" %}
        {% continue %}
      {% endif %}
      {% unless p.topics contains topic %}{% continue %}{% endunless %}
      <tr style="text-align:left">
        <td style="text-align:center;" ><div style="height: 4.5em; height: 4.5em;"><img style="max-height: 4.5em; max-height: 4.5em;" src="{{ p.image | default: '/assets/images/person.png' }}"/></div></td>
        <td style="text-align:left" ><a href="{{ p.url }}">{{ p.name }}</a><br/>{{ p.role }}<br/><span class="small">{% for t in p.topics %}{% if t[0] == "aida-data-hub" %}{% continue %}{% endif %}<a href="#{{ t[0] }}">{{ t[0] | replace: '-', ' ' | capitalize }}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}</span></td>
      </tr>
    {% endfor %}
  </table>
</div>
