module.exports = (env, callback) ->

  env.registerGenerator 'sampleGenerator', (contents, callback) ->
    console.log "Sample plugin will output articles retrieved by env.helpers.getArticles"
    articles = env.helpers.getArticles contents
    console.log articles
    callback null

  callback()

