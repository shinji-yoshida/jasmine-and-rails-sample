# = require fizz_buzz_printer
class @DOMFizzBuzzPrinter extends FizzBuzzPrinter
  constructor: (@elem) ->

  print: (txt) ->
    @elem.val(txt)

  printError: (errmsg) ->
    @elem.val("error: #{errmsg}")