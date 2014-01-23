describe('FizzBuzzConverter 2', function(){
  describe('convert', function(){
    beforeEach(function(){
      this.subject = new FizzBuzzConverter();
    });

    it('1 は 1, 2 = 2, 4 = 4', function(){
      expect(this.subject.convert(1)).toBe(1);
      expect([this.subject.convert(2), this.subject.convert(4)]).toEqual([2,4]);
    });

    it('3 は fizz', function(){
      expect(this.subject.convert(3)).toBe('fizz');
    });

    it('5 は buzz', function(){
      expect(this.subject.convert(5)).toBe('buzz');
    });

    it('15 は fizzbuzz', function(){
      expect(this.subject.convert(15)).toBe('fizzbuzz');
      expect(this.subject.convert(15)).not.toBe('fizz');
      expect(this.subject.convert(15)).toMatch(/fizz/);
    });

    it('数値以外の入力では例外が発生する', function(){
      var subject = this.subject;
      expect(function(){ subject.convert("foo"); }).toThrow();
      expect(function(){ subject.convert(null); }).toThrow();
      expect(function(){ subject.convert(1.1); }).not.toThrow();
    });
  });
});
