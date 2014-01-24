describe('FizzBuzzConverter 1', function(){
  describe('convert', function(){
    it('1 は 1, 2 = 2, 4 = 4', function(){
      var subject = new FizzBuzzConverter();
      expect(subject.convert(1)).toBe(1);
      expect([subject.convert(2), subject.convert(4)]).toEqual([2,4]);
    });

    it('3 は fizz', function(){
      var subject = new FizzBuzzConverter();
      expect(subject.convert(3)).toBe('fizz');
    });

    it('5 は buzz', function(){
      var subject = new FizzBuzzConverter();
      expect(subject.convert(5)).toBe('buzz');
    });

    it('15 は fizzbuzz', function(){
      var subject = new FizzBuzzConverter();
      expect(subject.convert(15)).toBe('fizzbuzz');
      expect(subject.convert(15)).not.toBe('fizz');
      expect(subject.convert(15)).toMatch(/fizz/);
    });

    it('数値以外の入力では例外が発生する', function(){
      var subject = new FizzBuzzConverter();
      expect(function(){ subject.convert("foo"); }).toThrow();
      expect(function(){ subject.convert(null); }).toThrow();
      expect(function(){ subject.convert(1.1); }).not.toThrow();
    });
  });
});
