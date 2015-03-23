decl
	integer status;
	integer a;
	integer fd;
	integer i;
enddecl
integer main()
{
	status = Create("myfile.dat");
    print(status);
    fd = Open("myfile.dat");
    print(fd);
	i = 88 ;
    status = Write(fd, i);
    print(status) ;
    i  = 999;
    status = Write(fd, i);
    print(status) ;
    status = Read(fd, i);
    print(status);
    print(i) ;
    a = Open("myfile.dat") ;
    print(status);
	i = 432 ;
    status = Read(a, i);
    print(status) ;
    print(i);
	status = Write(a, i);
    print(status);
    return 0; 
}
