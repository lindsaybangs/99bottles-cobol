       identification division.
       program-id. helloworld.
       data division.
       
       working-storage section.
       01 newline              pic x      value x'0a'.
       01 wall-bottles.
         03 wall-partial.
         05 wall-number        pic 99     value 99.
         05 filler             pic x      value spaces.
         05 wall-message       pic x(15)  value "bottles of beer".
         05 filler             pic x      value spaces.
         03 wall-message       pic x(11)  value "on the wall".

       01 less-bottles.
         03 less-partial.
         05 less-number        pic 9      value 9.
         05 filler             pic x      value spaces.
         05 less-message       pic x(15)  value "bottles of beer".
         05 filler             pic x      value spaces.
         03 less-message       pic x(11)  value "on the wall".

       procedure division.
       
       main.
       perform sing 98 times.
       perform last-beer.
       stop run.


       sing.

       if wall-number < 10 then
           perform sing-less
       else
           display
               wall-bottles
               newline
               wall-partial
               newline
               "take one down, pass it around"
           end-display
       end-if.

       subtract 1 from wall-number.

       if wall-number > 8 then
              display
                  wall-bottles
                  newline
              end-display
       end-if.


       sing-less.
       display
           less-bottles
           newline
           less-partial
           newline
           "take one down, pass it around"
       end-display.
       subtract 1 from less-number.
       display
           less-bottles
           newline
       end-display.


       last-beer.
       display
           "1 bottle of beer on the wall"
           newline
           "1 bottle of beer"
           newline
           "take one down, pass it around"
           newline
           "no more bottles of beer on the wall"
       end-display.
