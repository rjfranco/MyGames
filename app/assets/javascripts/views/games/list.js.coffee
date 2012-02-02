MyGames.ListGamesView = Ember.View.extend
  templateName: 'templates/games/list'
  gamesBinding: 'MyGames.gamesController'
  refreshListing: ->
    MyGames.gamesController.findAll

console.log 'MyGames.ListGamesView should be loaded.'