decl
	integer pid;
	integer status;
enddecl

integer main()
{
	print("Testing exit");
    pid = Fork();
    if (pid == -2) then
			status = Exec("even.xsm");
		pid = Fork();
		if (pid == -2) then
			status = Exec("odd.xsm");
		endif;
	endif;
	Exit();
	print("This should not be printed");
	return 0;
}
