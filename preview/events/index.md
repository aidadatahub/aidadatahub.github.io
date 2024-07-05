---
title: "Events"
---
<ul id="upcoming">
{% for event in site.events %}
 <li date="{{ event.date }}">{{ event.date | date: "%Y-%m-%d" }} <a href="{{ event.url }}">{{ event.title }}</a> <br/> {{ event.excerpt  }}</li>
{% endfor %}
</ul>

## Past events

<ul id="past">
{% for event in site.events reversed %}
 <li date="{{ event.date }}">{{ event.date | date: "%Y-%m-%d" }} <a href="{{ event.url }}">{{ event.title }}</a> <br/> {{ event.excerpt  }}</li>
{% endfor %}
</ul>

<script>
  $('#upcoming li[date]').each(function(){
  var postDate = new Date($(this).attr('date'));
  var yesterday = new Date();
  yesterday.setDate(oneWeekAgo.getDate() - 1);
  if(postDate<yesterday) $(this).hide();
  });

</script>
