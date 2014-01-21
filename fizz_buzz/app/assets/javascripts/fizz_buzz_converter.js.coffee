class window.FizzBuzzConverter
  convert: (n) ->
    unless typeof n == "number"
      throw new Error("#{n} must be number")

    switch
      when n % 15 == 0 then return "fizzbuzz"
      when n % 3 == 0 then return "fizz"
      when n % 5 == 0 then return "buzz"
      else return n
