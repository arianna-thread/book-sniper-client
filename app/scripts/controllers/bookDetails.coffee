'use strict'

angular.module('bookSniperClientApp')
  .controller 'BookDetailsCtrl', ($scope, restChart, $routeParams, $location, handleData) ->
    
    if $routeParams.isbn
        data = restChart.query isbn: $routeParams.isbn
    else
        $location.path '/error'

    $scope.chart.data = handleData.getData data
    $scope.chart.legend handleData.getLegend data    
