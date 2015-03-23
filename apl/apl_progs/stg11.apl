decl
	integer a;
	integer status;
	integer pid;
enddecl

integer main()
{
	a = Getpid();
	print("process ");
	print(a);
	a = Getppid();
	print("parent ");
	print(a);
	pid = Fork();
	if (pid == -2) then
		print("inchild ");
		a = Getpid();
		print("childpid ");
		print(a);
		a = Getppid();
		print("parentpid");
		print(a);
	endif;
	return 0;
}
