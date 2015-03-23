decl
	integer i;
	integer a;
	integer pid;
enddecl

integer main()
{
    //print(" o ");
    pid = Getpid();
    //print(a);
	i = 1;
	//print(i);
	while (i<20) do
		print(i);
		i = i+2;
	endwhile;
	a = Signal();
	while (i<40) do
		print(i);
		i = i+2;
	endwhile;
	//print("end o.xsm");
	Exit();
	return 0;
}
