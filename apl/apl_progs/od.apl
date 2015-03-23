decl
	integer i;
	integer a;
	integer pid;
enddecl

integer main()
{
    i = 1;
	while (i<20) do
		print(i);
		i = i+2;
	endwhile;

	while (i<40) do
		print(i);
		i = i+2;
	endwhile;
	
	Exit();
	return 0;
}
