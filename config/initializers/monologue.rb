Monologue.config do |config|
  config.site_name = "YourSolution"
  config.site_subtitle = "Get your solution"
  config.site_url = "http://localhost:3000/"

  config.meta_description = "This is my blog about..."
  config.meta_keyword = "tech, fun"

  config.admin_force_ssl = false
  config.posts_per_page = 10
  config.preview_size = 1000

  config.disqus_shortname = "activerecord"

  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  config.google_plusone_locale = "en"

  # config.layout               = "layouts/application"

  # ANALYTICS
  # config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  # config.google_analytics_id = "YOUR GA CODE"

  config.sidebar = ["latest_posts", "categories", "tag_cloud"]


  #SOCIAL
  #config.twitter_username = "myhandle"
  config.facebook_url = "https://www.facebook.com/prajapati.sanju"
  config.facebook_logo = 'logo.png'
  #config.google_plus_account_url = "https://plus.google.com/u/1/.../posts"
  config.linkedin_url = "http://www.linkedin.com/in/activerecord"
  config.github_username = "prsanjay"
  config.show_rss_icon = true

end