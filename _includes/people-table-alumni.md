<div class="dataset-table">
  <table>
    {% assign people = site.people | sort: sortkey,'last' %}
    {% for p in people %}
      {% if p.active == false %}
        <tr style="text-align:left">
          <td style="text-align:center;" ><div style="height: 4.5em; height: 4.5em;"><img style="max-height: 4.5em; max-height: 4.5em;" src="{{ p.image | default: '/assets/images/person.png' }}"/></div></td>
          <td style="text-align:left" ><a href="{{ p.url }}">{{ p.name }}</a><br/>{{ p.role }}<br/></td>
        </tr>
      {% endif %}
    {% endfor %}
  </table>
</div>