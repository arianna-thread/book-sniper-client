'use strict'

angular.module('bookSniperClientApp')
.factory 'Book', ($resource,configuration) ->
    $resource configuration.hostname + '\\:' + configuration.port + '/books/:isbn'

