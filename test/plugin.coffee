wintersmith = require 'wintersmith'
chai = require 'chai'
expect = chai.expect

Config = require('wintersmith/src/core/config').Config
wsArticles = require './../src'
env = wintersmith(Config, __dirname)

describe "wintersmith-articles-helper", ->
  beforeEach (done) ->
    wsArticles env, ->
      done()
  
  it "should return an object with contents of the specified directory", (done) ->
    env.ContentTree.fromDirectory env, 'test/contents', (err, tree)->
      articles = env.helpers.getArticles(tree)
      expect(articles).to.be.an('array')
      done()

