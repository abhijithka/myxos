decl
	integer status;
	integer pid;
enddecl

integer main()
{

	print(2) ;
	pid = Fork();
	if (pid == -2) then
		status = Exec("oddnos.xsm");
		print("status ");
		print(status);
	endif;
	print(4) ;
	print(6) ;
	print(8) ;
	print(10) ;
	print(12) ;
	print(14) ;
	//status = Exec("oddnos.xsm");
	print(16) ;
	print(18) ;
	print(20) ;
	return 0;
}
