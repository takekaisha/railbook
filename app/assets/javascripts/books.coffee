# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 
  
$ ->
  $(@).on 'change', '.unit-price, .quantity', ->
    unit_price = $(@)
      .parents('.modal-body')
      .find('.unit-price')
      .first()
      .val()
    quantity = $(@)
      .parents('.modal-body')
      .find('.quantity')
      .first()
      .val()
    total = parseInt(unit_price) * parseInt(quantity)
    if total
      $(@)
        .parents('.modal-body')
        .find('.subtotal')
        .val("#{total}")
        .change()

  $(@).on 'change', '.subtotal', ->
    alert '111'
    total = 0
    subtotals = $(@)
      .parents()
      .find('.subtotal')
      .each(-> total += parseInt($(@).val()))
    $('.total').val("#{total}円")