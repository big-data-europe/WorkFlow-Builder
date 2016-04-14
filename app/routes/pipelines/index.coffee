`import Ember from 'ember'`

PipelinesIndexRoute = Ember.Route.extend
  model: ->
    @store.findAll 'pipeline'
  actions:
    delete: (pipeline) ->
      pipeline.destroyRecord()

`export default PipelinesIndexRoute`
