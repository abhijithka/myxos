decl
	integer i;
	integer a;
enddecl

integer main()
{
    //print(" e ");
    //print(a);
	//print("e akathu");
	i = 0;
	while (i<20) do
		print(i);
		i = i+2;
	endwhile;
	//a = Wait(1);
	//print("out of signal");
	while (i<50) do
		print(i);
		i = i+2;
	endwhile;
	//a = Exec("o.xsm");
	return 0;
}
