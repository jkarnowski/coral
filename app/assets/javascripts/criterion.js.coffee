# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '#button_submit', (event) ->
    event.preventDefault()
    alert('reached coffee')
    $("#form1").trigger "submit"
    $("#form2").trigger "submit"

