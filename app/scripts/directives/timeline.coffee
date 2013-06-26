'use strict';

angular.module('bookSniperClientApp')
  .directive('timeline', () ->
    template: '<div id="chart_div" style="width:800px; height:350px"></div></div>'
    restrict: 'EA',
    scope: 
        data: '=',
        legend: '='

    link: (scope, element, attrs) ->
        scope.$watch 'data', ()->
            if scope.data      
                data = new google.visualization.DataTable()
                data.addColumn "date", "Date"
                Object.keys(scope.legend).forEach (item)->
                    data.addColumn('number', item)
                
                data.addRows scope.data
                chart = new google.visualization.AnnotatedTimeLine(document.getElementById("chart_div"))
                chart.draw data, displayAnnotations: true
        ,true
)


  