MyGames.ListGamesView = Ember.View.extend
  templateName: 'templates/games/list'
  gamesBinding: 'MyGames.gamesController'
  showNew: ->
    console.log 'showNew just happened'
    this.set 'isNewVisible', true
  hideNew: ->
    console.log 'hideNew just happened'
    this.set 'isNewVisible', false
  refreshListing: ->
    console.log 'refresh listing just happened'
    MyGames.gamesController.findAll
    