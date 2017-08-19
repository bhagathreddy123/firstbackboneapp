class Firstbackboneapp.Models.Student extends Backbone.Model
  paramRoot: 'student'

  defaults:
    name: null
    email: null
    mobile: null

class Firstbackboneapp.Collections.StudentsCollection extends Backbone.Collection
  model: Firstbackboneapp.Models.Student
  url: '/students'
