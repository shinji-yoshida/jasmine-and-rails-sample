#= require jasmine-sinon
#= require sinon

describe 'FizzBuzzApp', ->
  describe 'render', ->
    beforeEach ->
      @converter = sinon.createStubInstance(FizzBuzzConverter)
      @printer = sinon.createStubInstance(FizzBuzzPrinter)
      @subject = new FizzBuzzApp(@printer, @converter)

    it '入力を converter で変換する', ->
      input = 1234
      @converter.convert = sinon.mock().once().withArgs(input)
      # exercise
      @subject.render(input)
      # verify
      @converter.convert.verify()

    it 'converter の出力を print する', ->
      converter_output = "converter_output"
      @converter.convert.returns(converter_output)
      @printer.print = sinon.mock().once().withArgs(converter_output)
      # exercise
      @subject.render("dammy")
      # verify
      @printer.print.verify()

    it 'converter で例外が発生した場合、 printError', ->
      @converter.convert.throws(new Error("converter exception"))
      @printer.printError = sinon.mock().once().withArgs("converter exception")
      @printer.print = sinon.mock().never()
      # exercise
      @subject.render("dammy")
      # verify
      @printer.printError.verify()
      @printer.print.verify()

