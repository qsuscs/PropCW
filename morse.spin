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
      dah
    "b" :
      dah
      dit
      dit
      dit
    "c" :
      dah
      dit
      dah
      dit
    "d" :
      dah
      dit
      dit
    "e" :
      dit
    "f" :
      dit
      dit
      dah
      dit
    "g" :
      dah
      dah
      dit
    "h" :
      dit
      dit
      dit
      dit
    "i" :
      dit
      dit
    "j" :
      dit
      dah
      dah
      dah
    "k" :
      dah
      dit
      dah
    "l" :
      dit
      dah
      dit
      dit
    "m" :
      dah
      dah
    "n" :
      dah
      dit
    "o" :
      dah
      dah
      dah
    "p" :
      dit
      dah
      dah
      dit
    "q" :
      dah
      dah
      dit
      dah
    "r" :
      dit
      dah
      dit
    "s" :
      dit
      dit
      dit
    "t" :
      dah
    "u" :
      dit
      dit
      dah
    "v" :
      dit
      dit
      dit
      dah
    "w" :
      dit
      dah
      dah
    "x" :
      dah
      dit
      dit
      dah
    "y" :
      dah
      dit
      dah
      dah
    "z" :
      dah
      dah
      dit
      dit
    "0" :
      dah
      dah
      dah
      dah
      dah
    "1" :
      dit
      dah
      dah
      dah
      dah
    "2" :
      dit
      dit
      dah
      dah
      dah
    "3" :
      dit
      dit
      dit
      dah
      dah
    "4" :
      dit
      dit
      dit
      dit
      dah
    "5" :
      dit
      dit
      dit
      dit
      dit
    "6" :
      dah
      dit
      dit
      dit
      dit
    "7" :
      dah
      dah
      dit
      dit
      dit
    "8" :
      dah
      dah
      dah
      dit
      dit
    "9" :
      dah
      dah
      dah
      dah
      dit
PRI dit
  Synth.Synth("A",cwpin,freq)
  outa[ledpin]~~
  waitcnt(cnt + clkfreqms*ditlength)
  Synth.silence_a(cwpin)
  outa[ledpin]~
  waitcnt(cnt + clkfreqms*ditlength)
PRI dah
  Synth.Synth("A",cwpin,freq)
  outa[ledpin]~~
  waitcnt(cnt + clkfreqms*ditlength*3)
  Synth.silence_a(cwpin)
  outa[ledpin]~
  waitcnt(cnt + clkfreqms*ditlength)  