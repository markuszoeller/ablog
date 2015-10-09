{%- extends "page.html" %}
{% block body %}
  {% for collection in catalog %}
  {% if collection %}
  <div class="section">

    <h2>
      {{ header }}
      <a href="{{ pathto(collection.docname) }}">{{ collection }}</a>
    </h2>
    {% for post in collection %}
    <div class="section">
      <p>
      {% if fa %}{% endif %}
      {% if post.published %}
        {{ post.date.strftime(gettext(ablog.post_date_format)) }}
      {% else %}
        Draft
      {% endif %}
      - <a href="{{ pathto(post.docname) }}{{ anchor(post) }}">{{ post.title }}</a>
      </p>
      {% if 0 %}<ul class="ablog-archive">{% include "postcard2.html" %}</ul>{% endif %}
    </div>
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}
{% endblock %}
