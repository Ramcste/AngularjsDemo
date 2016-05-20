

app.service("ConsumerService",function($resource, $q, $http) {

    var resource = $resource('/api/Common/:action/:param', { action: '@action', param: '@param' }, {
        'update': { method: 'PUT' }
    });


    var _getAllConsumer = function () {
        var deferred = $q.defer();
        $http.get('/api/Common/GetAllConsumer')
            .then(function (result) {
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;

    };

    var _getConsumerById = function (consumerById) {
        var deferred = $q.defer();
           
        $http.get('/api/Common/GetConsumerById',consumerById)
            .then(function (result) {
                 
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;

    };

    var _addConsumer = function (consumer) {
        var deferred = $q.defer();
         
        $http.post('/api/Common/ConsumerSave', consumer)
            .then(function (result) {
                console.log(result);
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                        console.log(response);
                    });

        return deferred.promise;



    };

    var _updateConsumer = function (consumer) {
        var deferred = $q.defer();

        $http.post('/api/Common/ConsumerUpdate', consumer)
            .then(function (result) {

                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;
    };

    var _deleteConsumer = function (consumerById) {
        var deferred = $q.defer();

        $http.post('/api/Common/ConsumerDelete',consumerById)
            .then(function (result) {
                deferred.resolve(result);
            },
                    function (response) {
                        deferred.reject(response);
                    });

        return deferred.promise;
    };

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

    var _getProductById = function (productId) {
        var deferred = $q.defer();
       
        $http.get('/api/Common/GetProductById?productId='+productId)
          .then(function (result) {
              deferred.resolve(result);

              //console.log(JSON.stringify(result));
          },
                  function (response) {
                      deferred.reject(response);
                  });

        return deferred.promise;
    }

    return {

        getConsumerById: _getConsumerById,
        addConsumer: _addConsumer,
        updateConsumer: _updateConsumer,
        deleteConsumer: _deleteConsumer,
        getAllConsumer: _getAllConsumer,
        getAllProduct: _getAllProduct,
        getProductById: _getProductById
           
    };

});

