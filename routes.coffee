model = require './model'
utils = require './utils'
render = require './render'

_ = require 'underscore'

module.exports = (app) ->

  console.log utils.categoryUrls()

  app.get '/projects', (request, response) ->
    params = request.query
    response.send model.projects()

  app.get '/search', (request, response) ->
    query = decodeURIComponent request.query.q
    render.search request, response, query
  app.get '/categories', (request, response) ->
    if request.get('Content-Type') is 'application/json'
      response.json model.categories()

  app.get '/:categoryUrl', (request, response) ->
    categoryUrl = request.params.categoryUrl
    category = utils.getCategoryFromUrl categoryUrl
    if category
      render.category request, response, category
    else
      render.pageNotFound response

  # app.get '/:username', (request, response) ->
    # if request.get('Content-Type') is 'application/json'
      # return user object from api

  app.get '/', render.index
  # app.get '/community', render.index

  # app.get '/community', (request, response) ->
  #   console.log "#{request.method}  /community"
  #   # console.log request.headers
  #   render.index(request, response)


  app.use (request, response) -> 
    render.pageNotFound response

