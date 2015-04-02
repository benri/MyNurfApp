<!DOCTYPE html>
<html lang="${request.locale_name}" ng-app="dataPageApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="nurf web application">

    <title>Nurf Data</title>

    <!-- Bootstrap core CSS -->
    <link href="//oss.maxcdn.com/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">

    <style>

    </style>

    <!-- Custom styles for this scaffold -->
##     <link href="${request.static_url('nurfweb:static/theme.css')}" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="//oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body ng-controller="dataPageCtrl">

    <div style="margin: 0 20px;">
        <h2>NURF Data</h2>

        <button ng-click="getData()">Get Data</button>

        <button ng-click="db()">DB</button>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//oss.maxcdn.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//oss.maxcdn.com/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.js"></script>

    <script>
        var dataPageApp = angular.module('dataPageApp', []);

        dataPageApp.service('Riot', []);

        dataPageApp.controller('dataPageCtrl', ['$scope', '$http', function($scope, $http){

            var seedDataBaseUrl = "https://s3-us-west-1.amazonaws.com/riot-api/seed_data/";

            $scope.getData = function () {

                var matches1Url = seedDataBaseUrl + "matches1.json";



            };

            $scope.db = function() {
                $http.get('/db').then(
                    function(value){
                        if (value.status == 200) {
                            console.log(value.data);
                        }
                    }
                );
            };
        }])
    </script>
</body>
</html>
