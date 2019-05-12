# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://0.0.0.0:3000"

# Create index sitemaps file intelligently
SitemapGenerator::Sitemap.create_index = :auto

# Add root url to sitemap
# SitemapGenerator::Sitemap.create_index = true

# Manually ping search engines; rake task will automatically do this
# SitemapGenerator::Sitemap.search_engines

SitemapGenerator::Sitemap.create do
  add '/', changefreq: 'yearly', priority: 0.4
  add '/featured', changefreq: 'weekly', priority: 1.0
  add '/archive', changefreq: 'weekly'
  add '/information', changefreq: 'yearly', priority: 0.9, :pagemap => {
    dataobjects: [{
      type: 'document',
      id: 'biography',
      attributes: [
        { name: 'about', value: Information.first.about[0,30]}
      ]
    }]
  }

  Project.find_each do |project|
    # add project_path(project), lastmod: project.updated_at, priority: 0.9
    add(project_path(project), :pagemap => {
      dataobjects: [{
        type: 'blog_post',
        id: project.id,
        lastmod: project.updated_at,
        attributes: [
          { name: 'name', value: project.name },
          { name: 'description', value: project.description }
        ]
      }]
    },
    priority: 1.0)
  end
end


