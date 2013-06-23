'use strict'

angular.module('bookSniperClientApp')
  .controller 'BookDetailsCtrl', ($scope, Book, $routeParams, $location, handleData) ->
    if $routeParams.isbn
        data = Book.query isbn: $routeParams.isbn
    else
        $location.path '/error/:isbnNotProvided'

    $scope.chart.data = handleData.getData data
    $scope.chart.legend handleData.getLegend data
 

