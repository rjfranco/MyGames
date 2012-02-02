MyGames.NewGameView = Ember.View.extend
  tagName: 'form'
  templateName: 'templates/games/edit'
  init: ->
    this._super()
    this.set 'game', MyGames.Game.create()
  didInsertElement: ->
    this._super()
    this.$('input:first').focus()
  cancelForm: ->
    this.get('parentView').hideNew()
  submit: (event) ->
    self = this
    game = this.get 'game'
    
    event.preventDefault()
    
    game.saveResource()
      .fail((e)->
        MyGames.displayError(e)
      )
      .done(->
        MyGames.gamesController.pushObject(game)
        self.get('parentView').hideNew()
      )