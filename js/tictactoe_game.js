// Generated by CoffeeScript 1.7.1
var ticTacToe;

ticTacToe = angular.module("ticTacToeApp", []);

ticTacToe.controller("gameCtrl", [
  "$scope", function($scope) {
    return $scope.tileIds = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  }
]);
