# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Somehow this is getting bound twice, so unbind the first one...
$(document).on "ready page:change", ->
  $('.store .entry > img').unbind('click').click (event)->
    $(this).parent().find(':submit').click()