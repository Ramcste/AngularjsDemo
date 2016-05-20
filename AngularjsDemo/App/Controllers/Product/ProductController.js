


app.controller("ProductController", function ($scope, $q, ProductService, errorHandler) {

    
  
    LoadAllProducts();

    function LoadAllProducts() {
        var products = ProductService.getAllProduct();
        $q.all([products]).then(function (data) {
            if (data != null) {
                var records = data[0];
                $scope.products = records.data;

               // console.log(JSON.stringify(records));

            }
        }, function (reason) {
            errorHandler.logServiceError('ProductController', reason);
        }, function (update) {
            errorHandler.logServiceNotify('ProductController', update);
        });
    }

    $scope.divProduct = false;

    $scope.AddProductDiv = function () {
        $scope.divProduct = true;
        $scope.Action = "Add";
        clearFileds();
    }
    
    $scope.Cancel = function ()
    {

        $scope.divProduct = false;

    }

   
    $scope.AddUpdateProduct = function () {


        var product = {
            name: $scope.name,
            quantity: $scope.quantity,
            unitPrice: $scope.unitPrice,
            supplierName: $scope.supplierName
        };

        var getAction = $scope.Action;

        if (getAction == "Update") {


            product.id = $scope.id;

            var updateProduct = ProductService.updateProduct(product);

            updateProduct.then(function (result) {
                LoadAllProducts();
                $scope.divProduct = false;
            }, function (error) {
                console.log("something went wrong while updating.")
            });



            var productById={
                productId:product.id
            };

            var getProductById = ProductService.getProductById(productById);

        }
        else {
            var newProduct = ProductService.addProduct(product);

            newProduct.then(function (result) {
                LoadAllProducts();
                clearFileds();
                $scope.divProduct = false;

            }, function (error) { });

        }

    }


    $scope.editProduct = function (product) {

        var getProduct = ProductService.getProductById(product.id);

        getProduct.then(function (_product) {
            $scope.projectId = true;
            $scope.product = _product.data;
            $scope.id = product.id;
            $scope.name = product.name;
            $scope.quantity = product.quantity;
            $scope.unitPrice = product.unitPrice;
          
            $scope.supplierName = product.supplierName;
            $scope.Action = "Update";
            $scope.divProduct = true;

        }, function () {

            console.log("Error getting product records");
        });

       
    }

    $scope.deleteProduct = function (product) {

        var productById = {
            productId: product.id
        }

        var getProduct = ProductService.deleteProduct(productById);

        getProduct.then(function (result) {
            LoadAllProducts();
        }, function () {
            console.log("Error while deleting products.")

        });

    }



    function clearFileds() {
        $scope.name = "";
        $scope.quantity = "";
        $scope.unitPrice = "";
        $scope.supplierName="";


    }

});




