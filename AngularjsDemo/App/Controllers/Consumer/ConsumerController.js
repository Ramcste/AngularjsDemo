
app.controller("ConsumerController", function ($scope, $q, ConsumerService, errorHandler) {
 
    LoadAllConsumers();

    LoadAllProducts();


    function LoadAllConsumers() {
        var consumers = ConsumerService.getAllConsumer();
        $q.all([consumers]).then(function (data) {
            if (data != null) {
                var records = data[0];
                $scope.consumers = records.data;
               // console.log(JSON.stringify($scope.consumers))
            }
        }, function (reason) {
            errorHandler.logServiceError('ConsumerController', reason);
        }, function (update) {
            errorHandler.logServiceNotify('ConsumerController', update);
        });
    }

    function LoadAllProducts() {
        var allProducts = ConsumerService.getAllProduct();
        $q.all([allProducts]).then(function (data) {
            if (data != null) {
                var records = data[0];
                $scope.products = records.data;
              //console.log(JSON.stringify($scope.products))
            }
        }, function (reason) {
            errorHandler.logServiceError('ConsumerController', reason);
        }, function (update) {
            errorHandler.logServiceNotify('ConsumerController', update);
        });
    }

  
    $scope.divConsumer = false;
    
    $scope.addConsumerDiv = function () {
        $scope.divConsumer = true;
        $scope.Action = "Add";
        clearFileds();
       
    }

    $scope.Cancel = function () {

        $scope.divConsumer = false;

    }

    var totalQuantity;
    var unitPriceOfProduct;

    $scope.AddUpdateConsumer = function () {

       

        var consumer = {
            consumerName: $scope.consumerName,
            productId:$scope.productId,
            consumedQuantity: $scope.consumedQuantity,
            amount: $scope.amount,
            paid: $scope.value
        };

        var productById = {
            productId: $scope.productId
        };

      
    
            var getAction = $scope.Action;

            
            if (totalQuantity - $scope.consumedQuantity > 0) {
                if (getAction == "Update") {


                    consumer.id = $scope.id;
                    var updateConsumer = ConsumerService.updateConsumer(consumer);

                    updateConsumer.then(function (result) {
                        LoadAllConsumers();
                        $scope.divConsumer = false;
                    }, function (error) {
                        console.log("something went wrong while updating.")
                    });

                }


                else {


                    var newConsumer = ConsumerService.addConsumer(consumer);

                    newConsumer.then(function (result) {
                        LoadAllConsumers();
                        clearFileds();
                        $scope.divConsumer = false;

                    }, function (error) { });

                }

            }

            else {

                alert("You don't have enough product to sell.");
            }
        

       
    }


    $scope.editConsumer = function (consumer) {


        var consumerById = {
            consumerId: consumer.id
        }

        var getConsumer = ConsumerService.getConsumerById(consumerById);

        getConsumer.then(function (_consumer) {
            $scope.productId = true;
            $scope.consumer = _consumer.data;
            $scope.id = consumer.id;
            $scope.consumerName = consumer.consumerName;
            $scope.productId = consumer.productId;
            $scope.productName = consumer.productName;
            $scope.consumedQuantity = consumer.consumedQuantity;
            $scope.amount = consumer.amount;
            $scope.paid = consumer.paid;
            
        
            $scope.Action = "Update";
            $scope.divConsumer = true;

        }, function () {

            console.log("Error getting Consumer records");
        });


    
    }

    $scope.deleteConsumer = function (consumer) {

        var consumerById = {
            consumerId: consumer.id
        }

        var getConsumer = ConsumerService.deleteConsumer(consumerById);

        getConsumer.then(function (result) {
            LoadAllConsumers();
        }, function () {
            console.log("Error while deleting Consumers.")

        });

    }


    $scope.boolToStrInDropDownPaid = function (arg) { return arg ? 'Yes' : 'No' };

    function clearFileds() {
        $scope.consumerName = "";
        $scope.consumedQuantity = "";
        //$scope.projectId = "";
        $scope.Amount = "";


    }


    $scope.loadProductInfo = function () {

        var productId = $scope.productId;

        var getProduct = ConsumerService.getProductById(productId);

        $q.all([getProduct]).then(function (data) {
            if (data != null) {
                var records = data[0];

                totalQuantity=records.data.quantity;
                unitPriceOfProduct = records.data.unitPrice;
                console.log(JSON.stringify(data[0].data))
            }
        }, function (reason) {
            errorHandler.logServiceError('ConsumerController', reason);
        }, function (update) {
            errorHandler.logServiceNotify('ConsumerController', update);
        });

    }


    $scope.calculateAmount = function () {

        var soldQuantity = $scope.consumedQuantity;
        var unitPriceOfthatQuantity = unitPriceOfProduct;

        var totalamount = soldQuantity * unitPriceOfthatQuantity;

        if (totalamount != undefined) {
            $scope.amount = totalamount;
        }

        else {
            $scope.amount = 0;
        }
    }

});







