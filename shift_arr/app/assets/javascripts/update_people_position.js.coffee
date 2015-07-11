jQuery ->
  if $('#sortable').length > 0
    $('#sortable').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      # highlight the row on drop to indicate an update
      stop: (e, ui) ->
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        item_id = ui.item.data('item-id')
        console.log(item_id)
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/people/update_position'
          dataType: 'json'
          data: { person: {person_id: item_id, position_position: position } }
        )
    )