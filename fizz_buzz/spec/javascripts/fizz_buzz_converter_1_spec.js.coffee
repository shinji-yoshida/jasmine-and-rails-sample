# describe はテストをグループ化する
describe 'FizzBuzzConverter 1', ->
  # describe はネストできる
  # (rspec にある context は jasmine では存在しない)
  describe 'convert', ->
    # it はテストケース（rspec 用語では example）
    it '1 は 1, 2 = 2, 4 = 4', ->
      subject = new FizzBuzzConverter()
      expect(subject.convert(1)).toBe(1)
      expect([subject.convert(2), subject.convert(4)]).toEqual([2,4]) # toEqual は深い比較

    it '3 は fizz', ->
      subject = new FizzBuzzConverter()
      expect(subject.convert(3)).toBe('fizz')

    it '5 は buzz', ->
      subject = new FizzBuzzConverter()
      expect(subject.convert(5)).toBe('buzz')

    it '15 は fizzbuzz', ->
      subject = new FizzBuzzConverter()
      expect(subject.convert(15)).toBe('fizzbuzz')
      expect(subject.convert(15)).not.toBe('fizz') # 否定形
      expect(subject.convert(15)).toMatch(/fizz/) # regex

    it '数値以外の入力では例外が発生する', ->
      subject = new FizzBuzzConverter()
      # 例外のテストでは、関数オブジェクトを expect の引数として渡す
      expect(-> subject.convert("foo")).toThrow()
      expect(-> subject.convert(null)).toThrow()
      expect(-> subject.convert(1.1)).not.toThrow()
