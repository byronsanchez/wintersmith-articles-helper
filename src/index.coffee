
module.exports = (env, callback) ->
  options = null
  defaults =
    articles: 'articles' # directory containing contents to paginate

  updateOptions = () ->
    options = env.config.articlesHelper or {}
    for key, value of defaults
      options[key] ?= defaults[key]

  if !env.helpers.getArticles
    env.helpers.getArticles = (contents) ->
      updateOptions()
      # helper that returns a list of articles found in *contents*
      # note that each article is assumed to have its own directory in the articles directory
      articles = contents[options.articles]._.directories.map (item) -> item.index
      articles.sort (a, b) -> b.date - a.date
      return articles
  updateOptions()

  callback()

