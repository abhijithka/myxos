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
		//print("in e");
		p = Getppid();
		a = Wait(p);
		//print("hai");
		a = Exec("e.xsm");
		//print("in e a ");
		//print(a);
	else
		pid = Fork();
		//print("nd");
		//print(pid);
		if (pid == -2) then
			p = Getppid();
			a = Wait(p);
			//print("just wait");
			a = Wait(1);
			//print("go on");
			a = Exec("o.xsm");
        else
			a = Exec("n.xsm");
		endif;
	endif;
	return 0;
}
