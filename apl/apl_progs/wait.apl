decl
	integer a;
	integer pid;
	integer p1;
	integer p2;
	integer p;
enddecl

integer main()
{
    pid = Fork();
    if (pid == -2) then                            
		p = Getppid();
		a = Wait(p);
		a = Exec("ev.xsm");
    endif;

    pid = Fork();
    if (pid == -2) then
		p = Getppid();
		a = Wait(p);
		a = Wait(1);
		a = Exec("od.xsm");
    endif;

    a = Exec("n.xsm");
	return 0;
}
