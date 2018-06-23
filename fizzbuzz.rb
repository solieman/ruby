def fizzbuzz(x: 15)
  (1..x).each do |item|
    txt = ""
    if item%3 == 0
      txt = txt + 'fizz'
    end
    if item%5 == 0
      txt = txt + 'buzz'
    end
    if txt == ""
      txt = item
    end
    puts txt    
  end  
end

fizzbuzz(x:17)
