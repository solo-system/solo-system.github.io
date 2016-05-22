---
permalink: /news/
title: news
layout: page
weight: 9
---

<div class="home">

  <h1 class="page-heading">Posts</h1>

  <ul class="post-list">
    {% for post in site.posts %}
      <li>

        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>	 

      </li>
    {% endfor %}
  </ul>
</div>
