'use strict';

angular.module('bookSniperClientApp')
  .factory 'handleData', () ->
    # Service logic
    # ...

    getLegend = (data) ->
        legendChart = {}
        if data && data.refs
            legend = data.refs.reduce((accumulator,item)->
                accumulator[item.source] = item.uri
                return accumulator;
            , {})

            Object.keys(legend).forEach (key, index) ->
                legendChart[key] = index
                

            legend: legendChart
            book: 
                title: data.title
                author: data.author
                isbn: data.isbn
                legend: legend
                
        


    getData = (data) ->
        if data && data.refs
            legend = getLegend(data).legend
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
