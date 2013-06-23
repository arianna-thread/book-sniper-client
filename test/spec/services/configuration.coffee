'use strict'

describe 'Service: configuration', () ->

  # load the service's module
  beforeEach module 'bookSniperClientApp'

  # instantiate service
  configuration = {}
  beforeEach inject (_configuration_) ->
    configuration = _configuration_

  it 'should do something', () ->
    expect(!!configuration).toBe true;
