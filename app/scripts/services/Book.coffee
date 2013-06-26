'use strict'

angular.module('bookSniperClientApp')
.factory 'Book', ($resource,configuration) ->
    $resource 'http://' + configuration.hostname + '\\:' + configuration.port + '/books/:isbn'
    
