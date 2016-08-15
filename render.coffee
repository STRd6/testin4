model = require './model'
utils = require './utils'

_ = require 'underscore'

self = 

  index: (request, response) ->
    if request.get('Content-Type') is 'application/json'
      response.json model.projects()
    else
      response.render 'index.jade',
        title: 'Community Projects'
        categories: _.shuffle model.categories()
        projects: _.shuffle model.projects()
  
  category: (request, response, category) ->
    projects = utils.projectsInCategory category.id
    if request.get('Content-Type') is 'application/json'
      response.json projects
    else
      response.render 'category.jade',
        title: category.name
        category: category
        projects: projects
        categories: _.shuffle model.categories()
  
  search: (request, response, query) ->
    results = utils.searchProjects query
    if request.get('Content-Type') is 'application/json'
      response.send results
    else
      response.render 'search.jade',
        title: query
        results: results
        query: query
        categories: _.shuffle model.categories()
  
  pageNotFound: (response) ->
    response.status 404
    response.render '404.jade',
      title: "404"


module.exports = self
