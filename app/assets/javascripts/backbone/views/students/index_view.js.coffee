Firstbackboneapp.Views.Students ||= {}

class Firstbackboneapp.Views.Students.IndexView extends Backbone.View
  template: JST["backbone/templates/students/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (student) =>
    view = new Firstbackboneapp.Views.Students.PostView({model : student})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(students: @collection.toJSON() ))
    @addAll()

    return this
