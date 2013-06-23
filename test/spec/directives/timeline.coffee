'use strict'

describe 'Directive: timeline', () ->
  beforeEach module 'bookSniperClientApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<timeline></timeline>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the timeline directive'
