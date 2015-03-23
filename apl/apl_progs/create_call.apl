decl
	integer status;
	integer a;
enddecl

integer main()
{
	status = Read(0, a);
	print(status);
    a = 23;
	status = Write(0, a);
	print(status);
	status = Seek(0, 4);
	print(status);
	return 0;
}
