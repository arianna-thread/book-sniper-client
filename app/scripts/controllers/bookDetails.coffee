'use strict'

angular.module('bookSniperClientApp')
  .controller 'BookDetailsCtrl', ($scope, Book, $routeParams, $location, handleData) ->
    $scope.chart = {}
    if $routeParams.isbn
        $scope.data = Book.get isbn: $routeParams.isbn , ()->
            $scope.chart.data = handleData.getData $scope.data
            detail = handleData.getLegend $scope.data
            $scope.chart.legend = detail.legend
            $scope.book = 
                title: detail.book.title
                author: detail.book.author
                isbn: detail.book.isbn
                legend: detail.book.legend
    else
        $location.path '/error/:isbnNotProvided'
    # $scope.$watch 'data', ()->
    #     $scope.chart.data = handleData.getData $scope.data
    #     $scope.chart.legend = handleData.getLegend $scope.data
    # ,true

