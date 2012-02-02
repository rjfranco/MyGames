@MyGames = Ember.Application.create

MyGames.displayError = (e) ->
  if typeof e == 'string'
    console.log e
  else if typeof e == 'object' && e.responseText
    console.log e
  else
    console.log 'An unexpected error occured.'