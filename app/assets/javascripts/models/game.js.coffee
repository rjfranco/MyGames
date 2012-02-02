MyGames.Game = Ember.Resource.extend
  url: '/games'
  name: 'game'
  properties: ['name', 'release', 'rating', 'comment']
  validate: ->
    unless this.get 'name'
      return 'Games require a name.'