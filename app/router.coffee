`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'pipelines', ->
    @route 'index'
    @route 'new'
    @route 'steps', { path: '/:pipeline_id/steps' }, ->
      @route 'index'
      @route 'new'

`export default Router;`
