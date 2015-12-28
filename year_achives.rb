# By Johan Bleuzen
# A quick plugin that adds an array of post grouped by year for Jekyll

Jekyll::Hooks.register :site, :pre_render do |site, payload|
  payload['site']['year_archives'] = site.posts.docs.reverse.group_by {|post| post.date.year}.values;   
end
