'use strict'

describe 'Service: handleData', () ->

  # load the service's module
  beforeEach module 'bookSniperClientApp'

  # instantiate service
  handleData = {}
  beforeEach inject (_handleData_) ->
    handleData = _handleData_

  it 'should do something', () ->
    expect(!!handleData).toBe true;
