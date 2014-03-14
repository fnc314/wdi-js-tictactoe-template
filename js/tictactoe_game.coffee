ticTacToe = angular.module("ticTacToeApp", [])


ticTacToe.controller("gameCtrl", ["$scope"
  
  ($scope) ->

    $scope.currentPlayer = []

    $scope.tileIds = [0..8]
    
    $scope.players = [
      {
      name:      'Ernie',
      marker:    'X',
      img_url:   'img/ernie.jpg',
      indicator: 0
      },
      {
      name:      'Bert',
      marker:    'O',
      img_url:   'img/bert.jpg',
      indicator: 0
      }]

    $scope.selected = (index) ->
      console.log(index)
    return
    
])