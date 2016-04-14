`import Ember from 'ember'`

PipelinesStepsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'step',
      pipeline: @modelFor('pipelines.steps')
  actions:
    save: ->
      @modelFor('pipelines.steps.new').save().then (step) =>
        @transitionTo 'pipelines.steps', step.get('pipeline')
    cancel: ->
      @modelFor('pipelines.steps.new').rollbackAttributes()
      @transitionTo 'pipelines.steps', @modelFor('pipelines.steps')

`export default PipelinesStepsNewRoute`
