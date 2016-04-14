`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:pipelines/steps/new', 'Unit | Route | pipelines/steps/new', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
