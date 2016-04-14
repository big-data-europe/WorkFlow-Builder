`import Ember from 'ember'`

PipelinesStepsIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('pipelines.steps').get('steps')
  actions:
    delete: (step) ->
      step.destroyRecord()

`export default PipelinesStepsIndexRoute`
