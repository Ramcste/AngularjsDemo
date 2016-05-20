

app.service("ProductService", function ($resource, $q, $http) {

    var resource = $resource('/api/Common/:action/:param', { action: '@action', param: '@param' }, {
        'update': { method: 'PUT' }
    });


    var _getAllProduct = function () {
       
        var deferred = $q.defer();
        $http.get('/api/Common/GetAllProduct')
            .then(function (result) {
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;

    }

    var _addProduct = function (product) {


        var deferred = $q.defer();
        $http.post('/api/Common/Save',product)
            .then(function (result) {
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;

    }

    var _updateProduct = function (product) {
        var deferred = $q.defer();
        $http.post('/api/Common/Update', product)
          .then(function (result) {
              deferred.resolve(result);
          },
                  function (response) {
                      deferred.reject(response);
                  });

        return deferred.promise;

    }

    var _deleteProduct = function (product) {
        var deferred = $q.defer();
        $http.post('/api/Common/Delete', product)
          .then(function (result) {
              deferred.resolve(result);
          },
                  function (response) {
                      deferred.reject(response);
                  });

        return deferred.promise;
    }


    var _getProductById = function (productId) {
        var deferred = $q.defer();
        $http.get('/api/Common/GetProductById?productId='+productId)
          .then(function (result) {
              deferred.resolve(result);
          },
                  function (response) {
                      deferred.reject(response);
                  });

        return deferred.promise;
    }

    return {
        getAllProduct: _getAllProduct,
        addProduct: _addProduct,
        updateProduct: _updateProduct,
        deleteProduct: _deleteProduct,
        getProductById: _getProductById
    }


});

