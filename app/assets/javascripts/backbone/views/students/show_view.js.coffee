Firstbackboneapp.Views.Students ||= {}

class Firstbackboneapp.Views.Students.ShowView extends Backbone.View
  template: JST["backbone/templates/students/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
