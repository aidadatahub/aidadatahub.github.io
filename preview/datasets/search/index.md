---
title: "Search"
layout: overhaul
description: "Find datasets of interest on the AIDA Data Hub."
---


<div style="display:table; width:100%;">
    <label for="search" style="display:table-cell; width:1px">Search:&nbsp;</label>
    <input type="text" id="search" style="display:table-cell; width: 100%;" placeholder="Search for example modality:ct lymph node..."/>
    <span style="display:table-cell; width:1px; font-size: medium; vertical-align: middle;">&nbsp;<a onclick="$('#search').val('').trigger('keyup');">Clear</a></span>
</div>

<table id="dataset-table">
 <thead><tr><th>Name</th><th>Subject</th><th>Origin</th><th>Modality</th><th>Date</th><th>Size</th><th>Organ</th><th>Title</th></tr></thead>
 <tbody>
 {% for d in site.datasets %}
   {% if d.hidden %}{% continue  %}{% endif %}
   {% assign kw = d.datacite.keywords | split:", " %}
   {% assign organs = d.other.organ | map: "name" |join: ',' %}
   <tr>
     <td><a href="{{ d.url }}">{{ d.other.shortName }}</a></td>
     <td>{% if kw contains 'Pathology' %}<a href="/search/?q=Subject:Pathology">Pathology</a>{% endif %}{% if kw contains 'Radiology' %}<a href="/search/?q=Subject:Radiology">Radiology</a>{% endif %}</td>
     <td>{% if kw contains 'Synthetic' %}<a href="/search/?q=Origin:Synthetic">Synthetic</a>{% else %}<a href="/search/?q=Origin:Clinical">Clinical</a>{% endif %}</td>
     <td>
       {% for m in d.other.modality %}
         <a href="/search/?q=Modality:{{ m }}">{% include modality-title.html modality=m %}</a><br/>
       {% endfor %}
     </td>
     <td>{{ d.datacite.datePublished }}</td>
     <td>{% include human_friendly_filesize bytes=d.other.bytes %}</td>
     <td>{% for o in organs %}<a href="/search/?q=Organ:{{ o }}">{{ o }}</a> {% endfor %}</td>
     <td><b><a href="{{ d.url }}">{{ d.datacite.name }}</a></b><br/><span style="font-size: small;">{% for k in kw %}<a href="/search/?q={{ k }}">{{ k }}</a>{% unless forloop.last %},{% endunless %} {% endfor %}</span></td>
   </tr>
 {% endfor %}
 </tbody>
</table>

<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/plug-ins/1.10.19/sorting/file-size.js"></script>
<script>
// DataTables search extension to enable basic word search by column name, eg: modality:ct
var columns = {};
$("#dataset-table th").map( function (i, e) { columns[e.innerHTML.toLowerCase()] = i });
$.fn.dataTable.ext.search.push(
  function( settings, data, dataIndex ) {
    var terms = $('#search').val().toLowerCase().match(/\S+/g) || [];
    for (i = 0; i < terms.length; ++i) {
      var term = terms[i];
      var colspec = term.match(/(\w+):(.*)/);
      if (colspec) {
        var col = columns[colspec[1]];
        if (data[col] == undefined) {
          return false;
        }
        if (colspec[2] && data[col].toLowerCase().indexOf(colspec[2]) < 0) {
          return false;
        }
      } else {
        var match = false;
        for (j = 0; j < data.length; ++j) {
          match = match || (data[j].toLowerCase().indexOf(term) >= 0)
        }
        if (!match) {
          return false;
        }
      }
    }
    return true;
  }
);

$(document).ready( function () {
  var table = $('#dataset-table').DataTable({
     paging: false,
     dom: "ilrtp",
     columnDefs: [
       { type: 'file-size', targets: 4 }
     ]
  });

  // Event listener for live search
  $('#search').keyup( function(event) {
    var code = event.charCode || event.keyCode;
    if (code == 27) { // Esc clears searchbox
        this.value = '';
    }
    table.draw();
  } ).val(new URLSearchParams(window.location.search).get('q') || '');
  table.draw();
} );

</script>
