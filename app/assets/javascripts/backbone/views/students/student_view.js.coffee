Firstbackboneapp.Views.Students ||= {}

class Firstbackboneapp.Views.Students.PostView extends Backbone.View
  template: JST["backbone/templates/students/post"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
