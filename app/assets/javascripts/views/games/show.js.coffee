MyGames.ShowGameView = Ember.View.extend
  templateName: 'templates/games/show'
  classNames: ['show-game']
  doubleClick: ->
    this.showEdit()
  showEdit: ->
    this.set 'isEditing', true
  hideEdit: ->
    this.set 'isEditing', false
  destroyRecord: ->
    game = this.get 'game'
    
    game.destroyResource()
      .fail((e)->
        MyGames.displayError(e)
      )
      .done(->
        MyGames.gamesController.removeObject(game)
      )