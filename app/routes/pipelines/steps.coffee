`import Ember from 'ember'`

PipelinesStepsRoute = Ember.Route.extend
  model: (params) ->
    @store.findRecord 'pipeline', params.pipeline_id

`export default PipelinesStepsRoute`
