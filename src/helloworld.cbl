       identification division.
       program-id. helloworld.
       data division.
       
       working-storage section.
       01 newline              pic x      value x'0a'.

       procedure division.
       
       display
         "..."
          newline
         "Hello World!"
       end-display

       stop run.