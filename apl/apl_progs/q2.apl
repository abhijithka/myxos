decl
	integer status;
	integer a;
	integer fd;
enddecl
integer main()
{
    status = Create("myfile.dat");
    print(status);
    fd = Open("myfile.dat");
    print(fd);
    status = Read(fd, a);
    print(status);
	return 0;
}

