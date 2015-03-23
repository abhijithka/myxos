alias i S0 ;
load (7, 1) ;
load (8, 2) ;
load (23, 17) ;
load (24, 18) ;
load (25, 21) ;
load (26, 22) ;
load (27, 23) ;
i = READY_LIST+1;
while (i<1344) do
	[i] = 0;
	i = i+32;
endwhile ;
[READY_LIST] = 0 ;
[READY_LIST+1] = 2 ;
[READY_LIST+31] = 0;
PTBR = PAGE_TABLE ;
PTLR = 4 ;
[PTBR + 0] = 25 ;
[PTBR + 1] = "01" ;
[PTBR +2] = 26 ;
[PTBR + 3] = "01" ;
[PTBR + 4] = 27 ;
[PTBR + 5] = "01" ;
[PTBR + 6] = 28 ;
[PTBR + 7] = "01" ;
SP = 3*512 ;
[28*512] = 0 ;
load (11, 5) ;
load (12, 6) ;
load (9, 3) ;
load (10, 4) ;
load (5, 19) ;
load (6, 20) ;
i = 0 ;
while (i<128) do
	[FILE_TABLE + i + 0] = -1;
	[FILE_TABLE + i + 1] = 0;
	i = i+2;
endwhile;
i = 15;
while (i<31) do
	[READY_LIST+i+0] = -1;
	[READY_LIST+i+1] = -1;
	i = i+2;
endwhile;
load (13, 7);
load (14, 8);
load (17, 11);
load (18, 12);
load (15, 9);
load (16, 10);
load (19, 13);
load (20, 14);
load (21, 15);
load (22, 16);
load (23, 17);
load (24, 18);
i = 0;
while (i<=28) do
	[1280 + i] = 1;
    i = i+1;
endwhile;

while (i<64) do
	[1280 + i] = 0;
	i = i+1;
endwhile;	
ireturn ;


