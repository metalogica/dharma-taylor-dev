# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://0.0.0.0:3000"

# Create index sitemaps file intelligently
SitemapGenerator::Sitemap.create_index = :auto

SitemapGenerator::Sitemap.create do
  add '/', changefreq: 'yearly'
  add '/featured', changefreq: 'weekly', priority: 0.9
  add '/information', changefreq: 'monthly', priority: 1.0
  add '/archive', changefreq: 'weekly'

  Project.find_each do |project|
    add project_path(project), lastmod: project.updated_at, priority: 0.9
  end

  # Information.find_each do |info|
  #   add content_path(info), :lastmod => content
  # end

  # MetaTag.find_each do |meta|
  #   add content_path(meta), :lastmod => content
  # end

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end


