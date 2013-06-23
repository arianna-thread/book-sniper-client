'use strict'

describe 'Service: restChart', () ->

  # load the service's module
  beforeEach module 'bookSniperClientApp'

  # instantiate service
  restChart = {}
  beforeEach inject (_restChart_) ->
    restChart = _restChart_

  it 'should do something', () ->
    expect(!!restChart).toBe true;
