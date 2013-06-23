'use strict'

google.setOnLoadCallback ->
  angular.bootstrap document.body, ["bookSniperClientApp", "ngResource"]

google.load "visualization", "1",
  packages: ["corechart", "annotatedtimeline"]


angular.module('bookSniperClientApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/bookDetails/:isbn',
        templateUrl: 'views/bookDetails.html',
        controller: 'BookDetailsCtrl'
      .otherwise
        redirectTo: '/'
