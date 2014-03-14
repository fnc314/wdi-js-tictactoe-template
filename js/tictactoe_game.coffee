ticTacToe = angular.module("ticTacToeApp", [])


ticTacToe.controller("gameCtrl", ["$scope"
  
  ($scope) ->

    $scope.turn = 0

    $scope.tiles = [
      {id: 0, name: "tile0", letter: ""},
      {id: 1, name: "tile1", letter: ""},
      {id: 2, name: "tile2", letter: ""},
      {id: 3, name: "tile3", letter: ""},
      {id: 4, name: "tile4", letter: ""},
      {id: 5, name: "tile5", letter: ""},
      {id: 6, name: "tile6", letter: ""},
      {id: 7, name: "tile7", letter: ""},
      {id: 8, name: "tile8", letter: ""}]

    $scope.winCombos = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
      ]
    
    $scope.players = [
      {
      name: 'Ernie',
      marker: 'X',
      imgurl: 'img/ernie.jpg',
      indicator: 0
      moves: []
      },
      {
      name: 'Bert',
      marker: 'O',
      imgurl: 'img/bert.jpg',
      indicator: 1
      moves: []
      }]

    $scope.intersection = (array1,array2) ->
      [array1,array2]=[array2,array1] if array1.length > array2.length
      value for value in array1 when value in array2

    $scope.isWinner = (array) ->
      array = array.sort()
      if $scope.intersection(array, $scope.winCombos)
        console.log("true")
      else
        console.log("false")

    $scope.currentPlayer = ->
      $scope.players[$scope.turn]

    $scope.selected = (index) ->
      for player in $scope.players  
        for tile in $scope.tiles
          if tile.id == index and tile.letter == "" and player.indicator == $scope.turn
            tile.letter = player.marker
            player.moves.push(index)
            player.moves = player.moves.sort()
            console.log(player.moves)
            # $scope.isWinner([player.moves])
            $scope.turn++
            $scope.turn = $scope.turn % 2
      return

      

])