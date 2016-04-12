`import DS from 'ember-data'`

Pipeline = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')

  steps: DS.hasMany('step')

`export default Pipeline`
