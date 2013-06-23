'use strict';

angular.module('bookSniperClientApp')
  .directive('timeline', () ->
    template: '<div id="chart_div" style="width:700px; height:250px"></div></div>'
    restrict: 'EA',
    scope: 
        data: '=',
        legend: '='

    link: (scope, element, attrs) ->
        scope.$watch data, ()->      
            data = new google.visualization.DataTable()
            data.addColumn "date", "Date"
            Object.keys(scope.legend).forEach (item)->
                data.addColumn('number', item)
            
            data.addRows scope.data
            chart = new google.visualization.AnnotatedTimeLine(document.getElementById("chart_div"))
            chart.draw data, displayAnnotations: true
        ,true
)


  