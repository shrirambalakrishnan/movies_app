App.cable.subscriptions.create { channel: "MoviesChannel" },
  received: (data) ->
    @appendToMoviesList(data)

  appendToMoviesList: (data) ->
    $('.movies-list').append( @getHtml(data) )

  getHtml: (data) ->
    """
      <li>
        <div>
          <span>#{data["name"]}</span>
        </div>
      </li>
    """
