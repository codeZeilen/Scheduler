as yet unclassified
getMilliSecondOffset

   | lastSecond |
   lastSecond _ Time totalSeconds.
   [lastSecond = Time totalSeconds]
       whileTrue: [(Delay forMilliseconds: 1) wait].

   ^ Time millisecondClockValue \\ 1000.