---
title: "People"
description: "People at the <a href='/'>AIDA Data Hub</a>."
---

## AIDA Data Hub Team

<div class="dataset-table">
  <table>
    {% for d in site.people %}
      <tr style="text-align:left">
        <td style="text-align:left" ><a href="{{ d.url }}">{{ d.name }}</a></td>
        <td>{{ d.position }}</td>
      </tr>
    {% endfor %}
  </table>
</div>

