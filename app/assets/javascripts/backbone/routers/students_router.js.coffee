class Firstbackboneapp.Routers.StudentsRouter extends Backbone.Router
  initialize: (options) ->
    @students = new Firstbackboneapp.Collections.PostsCollection()
    @students.reset options.students

  routes:
    "new"      : "newStudent"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"       : "index"

  newStudent: ->
    @view = new Firstbackboneapp.Views.Students.NewView(collection: @students)
    $("#students").html(@view.render().el)

  index: ->
    @view = new Firstbackboneapp.Views.Students.IndexView(collection: @students)
    $("#students").html(@view.render().el)

  show: (id) ->
    student = @students.get(id)

    @view = new Firstbackboneapp.Views.Students.ShowView(model: student)
    $("#students").html(@view.render().el)

  edit: (id) ->
    student = @students.get(id)

    @view = new Firstbackboneapp.Views.Students.EditView(model: student)
    $("#students").html(@view.render().el)
