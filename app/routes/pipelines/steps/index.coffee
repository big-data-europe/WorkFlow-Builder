`import Ember from 'ember'`

PipelinesStepsIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('pipelines.steps').get('steps')
  actions:
    delete: (step) ->
      index = step.get('order')
      step.destroyRecord()
      steps = @modelFor('pipelines.steps.index').sortBy('order')
      Ember.run ->
        steps.forEach (step, i) ->
          if i > index
            step.set('order', i - 1)
            step.save()
    newStep: ->
      @transitionTo('pipelines.steps.new')
      
`export default PipelinesStepsIndexRoute`
