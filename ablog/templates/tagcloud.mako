% if ablog.tags:
  <h3><a href="${ pathto(ablog.tags.path) }">${ _('Tags') }</a></h3>
  <style type="text/css">
    ul.ablog-cloud {list-style: none; overflow: auto;}
    ul.ablog-cloud li {float: left; height: 20pt; line-height: 18pt; margin-right: 5px;}
    ul.ablog-cloud a {text-decoration: none; vertical-align: middle;}
    li.ablog-cloud-1{font-size: 80%;}
    li.ablog-cloud-2{font-size: 95%;}
    li.ablog-cloud-3{font-size: 110%;}
    li.ablog-cloud-4{font-size: 125%;}
    li.ablog-cloud-5{font-size: 140%;}
  </style>
  <ul class="ablog-cloud">
  % for coll in ablog.tags:
    % if coll:
      <li class="ablog-cloud ablog-cloud-${ coll.relsize(5, 1) }">
        <a href="${ pathto(coll.docname) }">${ coll }</a></li>
    % endif:
  % endfor
  </ul>
% endif
