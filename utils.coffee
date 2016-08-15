model = require './model'

_ = require 'underscore'
fuzzy = require 'fuzzy'

self = 

  projectsInCategory: (categoryId) ->
    _.filter model.projects(), (project) ->
      project.categoryId is categoryId
  
  getCategoryFromUrl: (categoryUrl) ->
    if _.contains self.categoryUrls(), categoryUrl.toLowerCase()
      category = _.findWhere model.categories(),
        url: categoryUrl
  
  categoryUrls: ->
    categories = model.categories()
    categoryUrls = _.map categories, (category) ->
      category.url
  
  searchProjects: (query) ->
    projectIds = []
    results = []
    projects = model.projects()
    nameOptions =
      pre: '<span class="result-match">'
      post: '</span>'
      extract: (el) ->
        return el.name
    descriptionOptions =
      pre: '<span class="result-match">'
      post: '</span>'
      extract: (el) ->
        return el.description
    nameResults = fuzzy.filter(query, projects, nameOptions)
    descriptionResults = fuzzy.filter(query, projects, descriptionOptions)
    allResults = nameResults.concat descriptionResults
    for result in allResults
      resultId = result.original.projectId
      unless _.contains(projectIds, resultId)
        projectIds.push resultId
        results.push result
    return results


module.exports = self
