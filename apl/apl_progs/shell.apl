decl
	integer a, b, c;
	string filename;
enddecl

integer main()
{
    while(1==1) do
		a = Fork();
		if (a == -2) then
            read(filename);
            //c = Getpid();
            //print("my pid ");
			//print(c);
			b = Exec(filename);
		else
            //print("child pid ");
            //print(a);
			c = Wait(a);
			//print("wait over");
		endif;
    endwhile;
	return 0;
}
