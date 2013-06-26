'use strict'

angular.module('bookSniperClientApp')
  .controller 'BookDetailsCtrl', ($scope, Book, $routeParams, $location, handleData) ->
    $scope.chart = {}
    if $routeParams.isbn
        console.log Book
        $scope.data = Book.get isbn: $routeParams.isbn , ()->
            $scope.chart.data = handleData.getData $scope.data
            $scope.chart.legend = handleData.getLegend $scope.data
    else
        $location.path '/error/:isbnNotProvided'
    # $scope.$watch 'data', ()->
    #     $scope.chart.data = handleData.getData $scope.data
    #     $scope.chart.legend = handleData.getLegend $scope.data
    # ,true

