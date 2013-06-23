'use strict';

angular.module('bookSniperClientApp')
  .factory 'restChart', ($resource,configuration) ->
    
    books = $resource configuration.hostname + '\\:' + configuration.port + '/books/:isbn' 
