OBJ
  Synth : "Synth"
VAR
  LONG clkfreqms
  WORD freq
  BYTE cwpin
  BYTE ledpin
  WORD ditlength
PUB init(Sfreq,Scwpin,Sledpin,Sditlength)
  clkfreqms := clkfreq/1000
  freq := Sfreq
  cwpin := Scwpin
  ledpin := Sledpin
  ditlength := Sditlength
PUB send(sign)
  CASE sign
    "a" :
      dit
      waitdit
      dah
    "b" :
      dah
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit    
    "c" :
      dah    
      waitdit
      dit    
      waitdit
      dah    
      waitdit
      dit    
    "d" :
      dah    
      waitdit
      dit    
      waitdit
      dit    
    "e" :
      dit    
    "f" :
      dit    
      waitdit
      dit    
      waitdit
      dah    
      waitdit
      dit
    "g" :
      dah    
      waitdit
      dah    
      waitdit
      dit
    "h" :
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit
    "i" :
      dit    
      waitdit
      dit
    "j" :
      dit    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah
    "k" :
      dah    
      waitdit
      dit    
      waitdit
      dah
    "l" :
      dit    
      waitdit
      dah    
      waitdit
      dit    
      waitdit
      dit
    "m" :
      dah    
      waitdit
      dah
    "n" :
      dah    
      waitdit
      dit
    "o" :
      dah    
      waitdit
      dah    
      waitdit
      dah
    "p" :
      dit    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dit
    "q" :
      dah    
      waitdit
      dah    
      waitdit
      dit    
      waitdit
      dah
    "r" :
      dit    
      waitdit
      dah    
      waitdit
      dit
    "s" :
      dit    
      waitdit
      dit    
      waitdit
      dit
    "t" :
      dah
    "u" :
      dit    
      waitdit
      dit    
      waitdit
      dah
    "v" :
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dah
    "w" :
      dit    
      waitdit
      dah    
      waitdit
      dah
    "x" :
      dah    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dah
    "y" :
      dah    
      waitdit
      dit    
      waitdit
      dah    
      waitdit
      dah
    "z" :
      dah    
      waitdit
      dah    
      waitdit
      dit    
      waitdit
      dit    
    "0" :
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah
    "1" :
      dit    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah
    "2" :
      dit    
      waitdit
      dit    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah
    "3" :
      dit
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dah    
      waitdit
      dah
    "4" :
      dit 
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dah
    "5" :
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit
    "6" :
      dah    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit
    "7" :
      dah    
      waitdit
      dah    
      waitdit
      dit    
      waitdit
      dit    
      waitdit
      dit
    "8" :
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dit    
      waitdit
      dit
    "9" :
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dah    
      waitdit
      dit
PUB waitdit
  waitcnt(cnt + clkfreqms*ditlength)
PUB waitdah
  waitcnt(cnt + clkfreqms*ditlength*3)
PUB wait7dits
  waitcnt(cnt + clkfreqms*ditlength*7)
PRI dit
  Synth.Synth("A",cwpin,freq)
  outa[ledpin]~~
  waitcnt(cnt + clkfreqms*ditlength)
  Synth.silence_a(cwpin)
  outa[ledpin]~
PRI dah
  Synth.Synth("A",cwpin,freq)
  outa[ledpin]~~
  waitcnt(cnt + clkfreqms*ditlength*3)
  Synth.silence_a(cwpin)
  outa[ledpin]~  