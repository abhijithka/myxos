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
	a = 43 ;
	integer i ;
	i = 0;
	while (i<512) do
		status = Write(fd, a);
		i = i+1;
	endwhile ;
    print(status) ;
    status = Seek(fd, 511) ;
    print(status) ;
    status = Write(fd, i);
    print(status) ;
    status = Write(fd, i);
    print(status) ;
	status = Seek(fd, 1515);
	print(status);
    status = Close(fd);
    print(status);
    status = Delete("myfile.dat");
    print(status);
	return 0;
}

