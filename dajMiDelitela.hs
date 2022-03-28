-- Máme hornú hranicu a chceme všetky čísla od 1 do tej hranice, 
-- pre ktoré platí, že číslo modulo x je rovné 0, čiže x je deliteľom čísla n.
dejMiDelitele n =  [ x | x <- [1 .. n] , n `mod` x == 0 ]

