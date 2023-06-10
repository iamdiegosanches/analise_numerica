clear
clc

n = 4;
[H, Hinv, NinfH, NinfHinv]  = hilbert (n);

H4 = 4*H

H8 = 8*H

H745 = 7.45*H

linha1 = H(1, :)
linha1_4 = 4 * linha1
linha1_8 = 8 * linha1
linha1_745 = 7.45 * linha1

