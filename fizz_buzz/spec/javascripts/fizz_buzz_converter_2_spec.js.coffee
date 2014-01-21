describe 'FizzBuzzConverter 2', ->
  describe 'convert', ->
    # 共通の setup 処理
    beforeEach ->
      @subject = new FizzBuzzConverter() # coffeescript において、 @ は this. を意味する

    it '1 は 1, 2 = 2, 4 = 4', ->
      expect(@subject.convert(1)).toBe(1)
      expect([@subject.convert(2), @subject.convert(4)]).toEqual([2,4])

    it '3 は fizz', ->
      expect(@subject.convert(3)).toBe('fizz')

    it '5 は buzz', ->
      expect(@subject.convert(5)).toBe('buzz')

    it '15 は fizzbuzz', ->
      expect(@subject.convert(15)).toBe('fizzbuzz')
      expect(@subject.convert(15)).not.toBe('fizz')
      expect(@subject.convert(15)).toMatch(/fizz/)

    it '数値以外の入力では例外が発生する', ->
      # 実行コンテキストが変わって @subject にアクセス出来ないので、ローカル変数を使う
      subject = @subject
      expect(-> subject.convert("foo")).toThrow()
      expect(-> subject.convert(null)).toThrow()
      expect(-> subject.convert(1.1)).not.toThrow()

