describe 'FizzBuzzConverter 3', ->
  describe 'convert', ->
    beforeEach ->
      # custom matcher は it や beforeEach の中で追加できる
      @addMatchers({
        toBeFizz: ->
          return @actual == 'fizz'
        toBeBuzz: ->
          return @actual == 'buzz'
        toBeFizzbuzz: ->
          return @actual == 'fizzbuzz'
      })

    beforeEach ->
      @subject = new FizzBuzzConverter()

    it '1 は 1, 2 = 2, 4 = 4', ->
      expect(@subject.convert(1)).toBe(1)
      expect([@subject.convert(2), @subject.convert(4)]).toEqual([2,4])

    it '3 は fizz', ->
      expect(@subject.convert(3)).toBeFizz() # custom matcher

    it '5 は buzz', ->
      expect(@subject.convert(5)).toBeBuzz()

    it '15 は fizzbuzz', ->
      expect(@subject.convert(15)).toBeFizzbuzz()
      expect(@subject.convert(15)).not.toBeFizz()
      expect(@subject.convert(15)).toMatch(/fizz/)

    it '数値以外の入力では例外が発生する', ->
      subject = @subject
      expect(-> subject.convert("foo")).toThrow()
      expect(-> subject.convert(null)).toThrow()
      expect(-> subject.convert(1.1)).not.toThrow()

