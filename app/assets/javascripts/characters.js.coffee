$ ->
  $(document).on 'change', '#countries_select', (evt) ->
    $.ajax 'update_character_form',
      type: 'GET'
      dataType: 'script'
      data: {
        birthplace_id: $("#countries_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic Country Select OK!")
