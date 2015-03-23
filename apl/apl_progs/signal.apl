decl
	integer a;
	integer pid;
enddecl

integer main()
{
    pid = Fork();
    if (pid == -2) then
		pid = Getppid();
		a = Wait(pid);
		a = Exec("e.xsm");
	else
		a = Exec("o.xsm");
	endif;
	return 0;
}
