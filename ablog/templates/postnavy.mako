## prev/next are not set for drafts
<% post = ablog[pagename] %>
% if post.published:
<div class="section">
  <span style="float: left;">
  % if post.prev:
    % if not ablog.fontawesome:
        ${ _('Previous') }:
    % endif
  <a href="${ pathto(post.prev.docname) }${ anchor(post.prev) }">
    % if ablog.fontawesome:
        <i class="fa fa-arrow-circle-left"></i>
    % endif
    ${ post.prev.title }
  </a>
    % endif
  </span>
  <span>&nbsp;</span>
  <span style="float: right;">
  % if post.next:
    % if not ablog.fontawesome:
        ${ _('Next') }:
    % endif
  <a href="${ pathto(post.next.docname) }${ anchor(post.next) }">
    ${ post.next.title }
    % if ablog.fontawesome:
        <i class="fa fa-arrow-circle-right"></i>
    % endif
  </a>
  </span>
  % endif
</div>
% endif
