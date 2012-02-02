MyGames.EditGameView = Ember.View.extend
  tagName: 'form'
  templateName: 'templates/games/edit'
  init: ->
    console.log 'Edit View initiated'
    # Create a new contact that is a duplicate of the contact in the parentView
    # Changes made to the duplicate won't be aplied to the original unless
    # everything goes well in submit()
    editableGame = MyGames.Game.create this.get('parentView').get('game')
    this.set 'game', editableGame
    this._super()
  didInsertElement: ->
    this._super()
    this.$('input:first').focus()
  cancelForm: ->
    this.get('parentView').hideEdit()
  submit: (event) ->
    self = this
    game = this.get 'game'
    
    event.preventDefault()
    
    game.saveResource()
      .fail((e)->
        MyGames.displayError(e)
      )
      .done(->
        parentView = self.get 'parentView'
        parentView.get('game').duplicateProperties(game)
        parentView.hideEdit()
      )