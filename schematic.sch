# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new led_blinker work:led_blinker:NOFILE -nosplit
load symbol IBUFDS hdi_primitives BUF pin O output pin I input pin IB input fillcolor 1
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [26:0] pinBus O output.right [26:0] fillcolor 1
load symbol RTL_MUX work MUX pinBus I0 input.left [26:0] pinBus I1 input.left [26:0] pinBus O output.right [26:0] pinBus S input.bot [26:0] fillcolor 1
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [26:0] fillcolor 1
load symbol RTL_REG__BREG_2 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG__BREG_1 work[26:0]sww GEN pin C input.clk.left pinBus D input.left [26:0] pinBus Q output.right [26:0] fillcolor 1 sandwich 3 prop @bundle 27
load port SYSCLK_N input -pg 1 -lvl 0 -x 0 -y 200
load port SYSCLK_P input -pg 1 -lvl 0 -x 0 -y 170
load port led output -pg 1 -lvl 6 -x 1100 -y 180
load inst clk_buf IBUFDS hdi_primitives -attr @cell(#000000) IBUFDS -pg 1 -lvl 2 -x 480 -y 190
load inst counter0_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[26:0] -pinBusAttr O @name O[26:0] -pg 1 -lvl 1 -x 100 -y 80
load inst counter_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[26:0] -pinBusAttr I0 @attr S=27'b101111101011110000100000000 -pinBusAttr I1 @name I1[26:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[26:0] -pinBusAttr S @name S[26:0] -pg 1 -lvl 2 -x 480 -y 70
load inst led0_i RTL_INV work -attr @cell(#000000) RTL_INV -pg 1 -lvl 4 -x 850 -y 260
load inst led_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[26:0] -pg 1 -lvl 4 -x 850 -y 180
load inst led_reg RTL_REG__BREG_2 work -attr @cell(#000000) RTL_REG -pg 1 -lvl 5 -x 990 -y 180
load inst counter_reg[26:0] RTL_REG__BREG_1 work[26:0]sww -attr @cell(#000000) RTL_REG -pg 1 -lvl 3 -x 680 -y 60
load net <const0> -ground -pin counter_i I0[26] -pin counter_i I0[25] -pin counter_i I0[24] -pin counter_i I0[23] -pin counter_i I0[22] -pin counter_i I0[21] -pin counter_i I0[20] -pin counter_i I0[19] -pin counter_i I0[18] -pin counter_i I0[17] -pin counter_i I0[16] -pin counter_i I0[15] -pin counter_i I0[14] -pin counter_i I0[13] -pin counter_i I0[12] -pin counter_i I0[11] -pin counter_i I0[10] -pin counter_i I0[9] -pin counter_i I0[8] -pin counter_i I0[7] -pin counter_i I0[6] -pin counter_i I0[5] -pin counter_i I0[4] -pin counter_i I0[3] -pin counter_i I0[2] -pin counter_i I0[1] -pin counter_i I0[0]
load net <const1> -power -pin counter0_i I1
load net SYSCLK_N -port SYSCLK_N -pin clk_buf IB
netloc SYSCLK_N 1 0 2 NJ 200 NJ
load net SYSCLK_P -port SYSCLK_P -pin clk_buf I
netloc SYSCLK_P 1 0 2 NJ 170 220J
load net clk -pin clk_buf O -pin counter_reg[26:0] C -pin led_reg C
netloc clk 1 2 3 620 130 NJ 130 960J
load net counter0[0] -attr @rip(#000000) O[0] -pin counter0_i O[0] -pin counter_i I1[0]
load net counter0[10] -attr @rip(#000000) O[10] -pin counter0_i O[10] -pin counter_i I1[10]
load net counter0[11] -attr @rip(#000000) O[11] -pin counter0_i O[11] -pin counter_i I1[11]
load net counter0[12] -attr @rip(#000000) O[12] -pin counter0_i O[12] -pin counter_i I1[12]
load net counter0[13] -attr @rip(#000000) O[13] -pin counter0_i O[13] -pin counter_i I1[13]
load net counter0[14] -attr @rip(#000000) O[14] -pin counter0_i O[14] -pin counter_i I1[14]
load net counter0[15] -attr @rip(#000000) O[15] -pin counter0_i O[15] -pin counter_i I1[15]
load net counter0[16] -attr @rip(#000000) O[16] -pin counter0_i O[16] -pin counter_i I1[16]
load net counter0[17] -attr @rip(#000000) O[17] -pin counter0_i O[17] -pin counter_i I1[17]
load net counter0[18] -attr @rip(#000000) O[18] -pin counter0_i O[18] -pin counter_i I1[18]
load net counter0[19] -attr @rip(#000000) O[19] -pin counter0_i O[19] -pin counter_i I1[19]
load net counter0[1] -attr @rip(#000000) O[1] -pin counter0_i O[1] -pin counter_i I1[1]
load net counter0[20] -attr @rip(#000000) O[20] -pin counter0_i O[20] -pin counter_i I1[20]
load net counter0[21] -attr @rip(#000000) O[21] -pin counter0_i O[21] -pin counter_i I1[21]
load net counter0[22] -attr @rip(#000000) O[22] -pin counter0_i O[22] -pin counter_i I1[22]
load net counter0[23] -attr @rip(#000000) O[23] -pin counter0_i O[23] -pin counter_i I1[23]
load net counter0[24] -attr @rip(#000000) O[24] -pin counter0_i O[24] -pin counter_i I1[24]
load net counter0[25] -attr @rip(#000000) O[25] -pin counter0_i O[25] -pin counter_i I1[25]
load net counter0[26] -attr @rip(#000000) O[26] -pin counter0_i O[26] -pin counter_i I1[26]
load net counter0[2] -attr @rip(#000000) O[2] -pin counter0_i O[2] -pin counter_i I1[2]
load net counter0[3] -attr @rip(#000000) O[3] -pin counter0_i O[3] -pin counter_i I1[3]
load net counter0[4] -attr @rip(#000000) O[4] -pin counter0_i O[4] -pin counter_i I1[4]
load net counter0[5] -attr @rip(#000000) O[5] -pin counter0_i O[5] -pin counter_i I1[5]
load net counter0[6] -attr @rip(#000000) O[6] -pin counter0_i O[6] -pin counter_i I1[6]
load net counter0[7] -attr @rip(#000000) O[7] -pin counter0_i O[7] -pin counter_i I1[7]
load net counter0[8] -attr @rip(#000000) O[8] -pin counter0_i O[8] -pin counter_i I1[8]
load net counter0[9] -attr @rip(#000000) O[9] -pin counter0_i O[9] -pin counter_i I1[9]
load net counter0_out[0] -attr @rip(#000000) O[0] -pin counter_i O[0] -pin counter_reg[26:0] D[0]
load net counter0_out[10] -attr @rip(#000000) O[10] -pin counter_i O[10] -pin counter_reg[26:0] D[10]
load net counter0_out[11] -attr @rip(#000000) O[11] -pin counter_i O[11] -pin counter_reg[26:0] D[11]
load net counter0_out[12] -attr @rip(#000000) O[12] -pin counter_i O[12] -pin counter_reg[26:0] D[12]
load net counter0_out[13] -attr @rip(#000000) O[13] -pin counter_i O[13] -pin counter_reg[26:0] D[13]
load net counter0_out[14] -attr @rip(#000000) O[14] -pin counter_i O[14] -pin counter_reg[26:0] D[14]
load net counter0_out[15] -attr @rip(#000000) O[15] -pin counter_i O[15] -pin counter_reg[26:0] D[15]
load net counter0_out[16] -attr @rip(#000000) O[16] -pin counter_i O[16] -pin counter_reg[26:0] D[16]
load net counter0_out[17] -attr @rip(#000000) O[17] -pin counter_i O[17] -pin counter_reg[26:0] D[17]
load net counter0_out[18] -attr @rip(#000000) O[18] -pin counter_i O[18] -pin counter_reg[26:0] D[18]
load net counter0_out[19] -attr @rip(#000000) O[19] -pin counter_i O[19] -pin counter_reg[26:0] D[19]
load net counter0_out[1] -attr @rip(#000000) O[1] -pin counter_i O[1] -pin counter_reg[26:0] D[1]
load net counter0_out[20] -attr @rip(#000000) O[20] -pin counter_i O[20] -pin counter_reg[26:0] D[20]
load net counter0_out[21] -attr @rip(#000000) O[21] -pin counter_i O[21] -pin counter_reg[26:0] D[21]
load net counter0_out[22] -attr @rip(#000000) O[22] -pin counter_i O[22] -pin counter_reg[26:0] D[22]
load net counter0_out[23] -attr @rip(#000000) O[23] -pin counter_i O[23] -pin counter_reg[26:0] D[23]
load net counter0_out[24] -attr @rip(#000000) O[24] -pin counter_i O[24] -pin counter_reg[26:0] D[24]
load net counter0_out[25] -attr @rip(#000000) O[25] -pin counter_i O[25] -pin counter_reg[26:0] D[25]
load net counter0_out[26] -attr @rip(#000000) O[26] -pin counter_i O[26] -pin counter_reg[26:0] D[26]
load net counter0_out[2] -attr @rip(#000000) O[2] -pin counter_i O[2] -pin counter_reg[26:0] D[2]
load net counter0_out[3] -attr @rip(#000000) O[3] -pin counter_i O[3] -pin counter_reg[26:0] D[3]
load net counter0_out[4] -attr @rip(#000000) O[4] -pin counter_i O[4] -pin counter_reg[26:0] D[4]
load net counter0_out[5] -attr @rip(#000000) O[5] -pin counter_i O[5] -pin counter_reg[26:0] D[5]
load net counter0_out[6] -attr @rip(#000000) O[6] -pin counter_i O[6] -pin counter_reg[26:0] D[6]
load net counter0_out[7] -attr @rip(#000000) O[7] -pin counter_i O[7] -pin counter_reg[26:0] D[7]
load net counter0_out[8] -attr @rip(#000000) O[8] -pin counter_i O[8] -pin counter_reg[26:0] D[8]
load net counter0_out[9] -attr @rip(#000000) O[9] -pin counter_i O[9] -pin counter_reg[26:0] D[9]
load net counter[0] -attr @rip(#000000) 0 -pin counter0_i I0[0] -pin counter_i S[0] -pin counter_reg[26:0] Q[0] -pin led_i A[0]
load net counter[10] -attr @rip(#000000) 10 -pin counter0_i I0[10] -pin counter_i S[10] -pin counter_reg[26:0] Q[10] -pin led_i A[10]
load net counter[11] -attr @rip(#000000) 11 -pin counter0_i I0[11] -pin counter_i S[11] -pin counter_reg[26:0] Q[11] -pin led_i A[11]
load net counter[12] -attr @rip(#000000) 12 -pin counter0_i I0[12] -pin counter_i S[12] -pin counter_reg[26:0] Q[12] -pin led_i A[12]
load net counter[13] -attr @rip(#000000) 13 -pin counter0_i I0[13] -pin counter_i S[13] -pin counter_reg[26:0] Q[13] -pin led_i A[13]
load net counter[14] -attr @rip(#000000) 14 -pin counter0_i I0[14] -pin counter_i S[14] -pin counter_reg[26:0] Q[14] -pin led_i A[14]
load net counter[15] -attr @rip(#000000) 15 -pin counter0_i I0[15] -pin counter_i S[15] -pin counter_reg[26:0] Q[15] -pin led_i A[15]
load net counter[16] -attr @rip(#000000) 16 -pin counter0_i I0[16] -pin counter_i S[16] -pin counter_reg[26:0] Q[16] -pin led_i A[16]
load net counter[17] -attr @rip(#000000) 17 -pin counter0_i I0[17] -pin counter_i S[17] -pin counter_reg[26:0] Q[17] -pin led_i A[17]
load net counter[18] -attr @rip(#000000) 18 -pin counter0_i I0[18] -pin counter_i S[18] -pin counter_reg[26:0] Q[18] -pin led_i A[18]
load net counter[19] -attr @rip(#000000) 19 -pin counter0_i I0[19] -pin counter_i S[19] -pin counter_reg[26:0] Q[19] -pin led_i A[19]
load net counter[1] -attr @rip(#000000) 1 -pin counter0_i I0[1] -pin counter_i S[1] -pin counter_reg[26:0] Q[1] -pin led_i A[1]
load net counter[20] -attr @rip(#000000) 20 -pin counter0_i I0[20] -pin counter_i S[20] -pin counter_reg[26:0] Q[20] -pin led_i A[20]
load net counter[21] -attr @rip(#000000) 21 -pin counter0_i I0[21] -pin counter_i S[21] -pin counter_reg[26:0] Q[21] -pin led_i A[21]
load net counter[22] -attr @rip(#000000) 22 -pin counter0_i I0[22] -pin counter_i S[22] -pin counter_reg[26:0] Q[22] -pin led_i A[22]
load net counter[23] -attr @rip(#000000) 23 -pin counter0_i I0[23] -pin counter_i S[23] -pin counter_reg[26:0] Q[23] -pin led_i A[23]
load net counter[24] -attr @rip(#000000) 24 -pin counter0_i I0[24] -pin counter_i S[24] -pin counter_reg[26:0] Q[24] -pin led_i A[24]
load net counter[25] -attr @rip(#000000) 25 -pin counter0_i I0[25] -pin counter_i S[25] -pin counter_reg[26:0] Q[25] -pin led_i A[25]
load net counter[26] -attr @rip(#000000) 26 -pin counter0_i I0[26] -pin counter_i S[26] -pin counter_reg[26:0] Q[26] -pin led_i A[26]
load net counter[2] -attr @rip(#000000) 2 -pin counter0_i I0[2] -pin counter_i S[2] -pin counter_reg[26:0] Q[2] -pin led_i A[2]
load net counter[3] -attr @rip(#000000) 3 -pin counter0_i I0[3] -pin counter_i S[3] -pin counter_reg[26:0] Q[3] -pin led_i A[3]
load net counter[4] -attr @rip(#000000) 4 -pin counter0_i I0[4] -pin counter_i S[4] -pin counter_reg[26:0] Q[4] -pin led_i A[4]
load net counter[5] -attr @rip(#000000) 5 -pin counter0_i I0[5] -pin counter_i S[5] -pin counter_reg[26:0] Q[5] -pin led_i A[5]
load net counter[6] -attr @rip(#000000) 6 -pin counter0_i I0[6] -pin counter_i S[6] -pin counter_reg[26:0] Q[6] -pin led_i A[6]
load net counter[7] -attr @rip(#000000) 7 -pin counter0_i I0[7] -pin counter_i S[7] -pin counter_reg[26:0] Q[7] -pin led_i A[7]
load net counter[8] -attr @rip(#000000) 8 -pin counter0_i I0[8] -pin counter_i S[8] -pin counter_reg[26:0] Q[8] -pin led_i A[8]
load net counter[9] -attr @rip(#000000) 9 -pin counter0_i I0[9] -pin counter_i S[9] -pin counter_reg[26:0] Q[9] -pin led_i A[9]
load net led -port led -pin led0_i I0 -pin led_reg Q
netloc led 1 3 3 800 300 NJ 300 1080
load net led0 -pin led0_i O -pin led_reg D
netloc led0 1 4 1 960 200n
load net led_i_n_0 -pin led_i O -pin led_reg CE
netloc led_i_n_0 1 4 1 N 180
load netBundle @counter0 27 counter0[26] counter0[25] counter0[24] counter0[23] counter0[22] counter0[21] counter0[20] counter0[19] counter0[18] counter0[17] counter0[16] counter0[15] counter0[14] counter0[13] counter0[12] counter0[11] counter0[10] counter0[9] counter0[8] counter0[7] counter0[6] counter0[5] counter0[4] counter0[3] counter0[2] counter0[1] counter0[0] -autobundled
netbloc @counter0 1 1 1 NJ 80
load netBundle @counter0_out 27 counter0_out[26] counter0_out[25] counter0_out[24] counter0_out[23] counter0_out[22] counter0_out[21] counter0_out[20] counter0_out[19] counter0_out[18] counter0_out[17] counter0_out[16] counter0_out[15] counter0_out[14] counter0_out[13] counter0_out[12] counter0_out[11] counter0_out[10] counter0_out[9] counter0_out[8] counter0_out[7] counter0_out[6] counter0_out[5] counter0_out[4] counter0_out[3] counter0_out[2] counter0_out[1] counter0_out[0] -autobundled
netbloc @counter0_out 1 2 1 N 70
load netBundle @counter 27 counter[26] counter[25] counter[24] counter[23] counter[22] counter[21] counter[20] counter[19] counter[18] counter[17] counter[16] counter[15] counter[14] counter[13] counter[12] counter[11] counter[10] counter[9] counter[8] counter[7] counter[6] counter[5] counter[4] counter[3] counter[2] counter[1] counter[0] -autobundled
netbloc @counter 1 0 4 20 130 NJ 130N 600 150 800
levelinfo -pg 1 0 100 480 680 850 990 1100
pagesize -pg 1 -db -bbox -sgen -120 0 1170 310
show
zoom 0.822933
scrollpos -93 -108
#
# initialize ictrl to current module led_blinker work:led_blinker:NOFILE
ictrl init topinfo |
