'use strict'

angular.module('bookSniperClientApp')
.controller 'MainCtrl', ($scope, Book, $location) ->
    search = (queryString) ->
        Book.query query: queryString, () -> $scope.searchText = ""

    $scope.search = (queryString) ->
        $scope.alert = ""
        $scope.alertSuccess = ""
        $scope.books = search queryString

    $scope.track = (uri) ->
        $scope.alert = ""
        $scope.alertSuccess = ""
        Book.get uri: uri, (book) ->
            $scope.addUri = ""
            if book.error
                $scope.alert = "Sorry, we didn't find a book matching this URI"
                $scope.books = []
            else
                sources = ( ref.source for ref in book.refs )
                $scope.alertSuccess = "Great, book found on: " + sources.join ", "
                $scope.books = [book]
        # $scope.books = [  ]

    $scope.details = (book) ->
        $location.path '/book/' + book.isbn


