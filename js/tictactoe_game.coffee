ticTacToe = angular.module("ticTacToeApp", [])


ticTacToe.controller "gameCtrl", ["$scope"
  
  ($scope) ->

    $scope.tileIds = [0..8]
    
]