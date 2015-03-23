decl
	integer childpid;
	integer retval;
enddecl

integer main()
{
    //print("Yahoo");
	childpid = Fork();
	//print ("fork good");

	if	(childpid == -2) then
		retval = Exec("sample.xsm");
	else
		while (childpid != -1) do
			print(childpid);
		endwhile;
		retval = Exec("sample.xsm") ;
	endif;
	return 0;
}
