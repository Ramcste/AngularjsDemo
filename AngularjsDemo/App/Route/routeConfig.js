(function () {
    'use strict';

    angular.module('angularjsDemo')
        .config(['$routeProvider', function ($routeProvider) {
            $routeProvider


         .when('/', {
             templateUrl: '/App/Templates/Product/Index.html',
             controller: 'ProductController'

         })

         .when('/Product/Index', {
             templateUrl: '/App/Templates/Product/Index.html',
             controller: 'ProductController'

         })
            .when('/Consumer/Index', {
                templateUrl: '/App/Templates/Consumer/Index.html',
                controller: 'ConsumerController'

            })

          .otherwise({
              templateUrl: '/App/Templates/Shared/_404.html'
          })
        }])

  .run([function () {        
    }]);


})();