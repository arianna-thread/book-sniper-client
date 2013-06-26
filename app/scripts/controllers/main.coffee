'use strict'

angular.module('bookSniperClientApp')
.controller 'MainCtrl', ($scope, Book, $location) ->
    search = (queryString) ->
        Book.query query: queryString, () -> $scope.searchText = ""

    $scope.search = (queryString) ->
        $scope.books = search queryString

    $scope.track = (uri) ->
        $scope.books = [ Book.get uri: uri, () -> $scope.addUri = "" ]

    $scope.details = (book) ->
        $location.path '/book/' + book.isbn
