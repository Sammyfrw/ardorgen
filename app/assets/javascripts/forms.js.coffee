$ ->
  $(document).on 'change', 'countries_select', (evt) ->
    console.log("Got the script!")
    $.ajax 'update_character_form',
    type: 'GET'
    dataType: 'script'
    data: {
      birthplace_id: $("#countries_select option:selected").val()
    }
    error: (jqHXR, textStatus, errorThrown) ->
      console.log("Ajax error: #{textStatus}")
    success: (data, textStatus, jqHXR) ->
      console.log("Dynamic Country Select OK!")
