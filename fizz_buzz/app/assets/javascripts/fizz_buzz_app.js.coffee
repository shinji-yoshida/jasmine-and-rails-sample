class @FizzBuzzApp
  constructor: (@printer, @converter) ->

  render: (n) ->
    try
      converted = @converter.convert(n)
      @printer.print(converted)
    catch error
      @printer.printError(error.message)