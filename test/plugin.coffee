wintersmith = require 'wintersmith'
chai = require 'chai'
expect = chai.expect

Config = require('wintersmith/src/core/config').Config
wsArticles = require './../src'
env = wintersmith(Config, __dirname)
defaultDirectory = "articles"
specifiedDirectory = "articles2"

describe "wintersmith-articles-helper", ->
  beforeEach (done) ->
    wsArticles env, ->
      done()

  it "should create an object with a list of articles from the default directory", (done) ->
    env.ContentTree.fromDirectory env, 'test/contents', (err, tree)->
      articles = env.helpers.getArticles(tree)
      expect(tree[defaultDirectory]).to.be.an('object')
      expect(articles).to.be.an('array')
      done()

  it "should create an object with a list of articles from the specified directory", (done) ->
    env.config.articlesHelper = {}
    env.config.articlesHelper['articles'] = specifiedDirectory
    env.ContentTree.fromDirectory env, 'test/contents', (err, tree)->
      articles = env.helpers.getArticles(tree)
      expect(tree[specifiedDirectory]).to.be.an('object')
      expect(articles).to.be.an('array')
      done()


