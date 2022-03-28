sumLastDigits x =
   let lastDigit = mod x 10
       lastTwoDigits = mod x 100
   in lastDigit + (lastTwoDigits `div` 10)
