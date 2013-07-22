CON
  _clkmode = xtal1 + pll16x     ' 16x the input freq
  _xinfreq = 5_000_000          ' 5 MHz crystal

  freq = 440
  cwpin = 11
  ledpin = 0
OBJ
  morse : "morse"
VAR
  LONG ditlength
PUB main
  ditlength := 100
  dira[ledpin]~~
  morse.init(freq,cwpin,ledpin,ditlength)
  repeat
    morse.send("c")
    morse.waitdah
    morse.send("q")
    morse.wait7dits