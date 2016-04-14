`import Ember from 'ember'`

PipelinesStepsIndexController = Ember.Controller.extend
  stepSorting: ['order']
  sortedSteps: Ember.computed.sort 'model', 'stepSorting'
  actions:
    reorderSteps: (steps, draggedStep) ->
      steps.forEach (step, i) ->
        step.set('order', i)
        step.save()

`export default PipelinesStepsIndexController`
