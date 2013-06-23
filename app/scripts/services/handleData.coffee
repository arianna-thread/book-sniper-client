'use strict';

angular.module('bookSniperClientApp')
  .factory 'handleData', () ->
    # Service logic
    # ...

    getLegend = (data) ->
        if data
            legend = data.refs.reduce((accumulator,item)->
                accumulator[item.source] = 1
                return accumulator;
            , {})
            Object.keys(legend).forEach (key, index) ->
                legend[key] = index
            return legend


    getData = (data) ->
        if data
            legend = getLegend()
            data.refs.map( (item)->
                array  = new Array(Object.keys(legend).length + 1)
                array[0] = new Date(item.date)
                array[legend[item.source] + 1] = item.price
                return array
            )


    # Public API here
    {
      getLegend : getLegend,
      getData : getData
    }
