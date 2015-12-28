# Jekyll Year Archives

Jekyll Year Archives is a small plugin that group posts by year.
It use newly implemented hooks, and content is created before rendering after payload is fulfilled.

## Installation

If you are not using a git repository (you should !), just copy `year_archives.rb`

Just clone in your `_plugins` folder

   git submodule add https://github.com/jbleuzen/jekyll-year_archives.git _plugins/jekyll-year_archives

To update :

   git submodule update

## Usage

If you want a list of posts grouped by years :

  {% for year in site.year_archives %}
  {% set current_year = year.first.date %}
   <h2 id="{{ current_year }}">{{ current_year }}</h2>
   <ul>
      {% for post in site.year_archives %}
      <li>{{ post.title }}</li>
      {% endfor %}
   </ul>
   {% endfor %}

It's a little hacky but it's really easy and convenient to use !
