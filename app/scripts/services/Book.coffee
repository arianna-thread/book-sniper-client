'use strict';

angular.module('bookSniperClientApp')
  .factory 'Book', ($resource,configuration) ->
    
    books = $resource configuration.hostname + '\\:' + configuration.port + '/books/:isbn' 
    