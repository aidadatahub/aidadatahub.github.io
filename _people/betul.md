---
layout: default
include: person
name: Betul Eren
position: Data Sharing
photo: assets/images/people/betul-eren.jpg
email: betul.eren@liu.se
url: "https://datahub.aida.scilifelab.se/people/betul"
image: "/assets/images/people/betul-eren.jpg"
---

<div><img id="aida-map" src="/assets/images/people/betul-eren.jpg" alt="" style="float: left; width: 20%; margin-top: -2ex; cursor: pointer;"></div>

<div><img id="aida-map" src="/assets/images/people/betul-eren.jpg" alt="" style="float: left; width: 20%; margin-top: -2ex; margin-left: 5ex; cursor: pointer;"></div>

<td>{{ d.position }}</td>


AIDA is [organized](https://medtech4health.se/en/aida-en-2/aida-organization/)
as a collaboration arena, currently engaging
[~50 partners](https://medtech4health.se/en/aida-arena/organization/),
from academia, industry and healthcare. AIDA is coordinated by the
[Linköping University](https://liu.se)
[Center for Medical Image Science and Visualization](https://liu.se/cmiv) (CMIV)
and is driven by clinical needs.

AIDA Activities include:
* [Research & innovation projects](https://medtech4health.se/aida-arena/innovation-projects/)
* [Clinical evaluations](https://medtech4health.se/en/clinical-evaluations/)
* [Fellowships](https://medtech4health.se/aida-arena/fellowships/)
* [Data, compute & storage services](/) &larr; This is the [AIDA Data Hub](/)!
* [AIDA Days](https://medtech4health.se/aida-arena/) ~8 Workshops per year
* [Training](https://medtech4health.se/aida-arena/)
* [Network partnerships](https://medtech4health.se/aida-en/network-partner/)



<div class="dataset-table">
  <table>
    {% for d in site.people %}
      <tr>
        <td><a href="{{ d.url }}">{{ d.name }}</a></td>
        <td>{{ d.position }}</td>
      </tr>
    {% endfor %}
  </table>
</div>



<div class="dataset-table">
  <table>
    {% for d in site.people %}
      <tr>
        <td><a href="{{ d.url }}"><img src="{{ d.image | default: d.other.exampleImage[0].thumbnail-url | default: d.other.exampleImage[0].url }}"></a></td>        
        <td>
          <a href="{{ d.url }}">{{ d.name }}</a><br/>
          <a href>{{ d.position }}</a><br/>
          <a href>{{ d.email }}</a><br/>
        </td>
      </tr>
    {% endfor %}
  </table>
</div>



