decl
	integer a, status;
enddecl

integer main()
{
    a = Fork();
    if (a == -2) then
		status = Exec("odd.xsm");
	else
		status = Exec("even.xsm");
    endif;
	return 0;
}
