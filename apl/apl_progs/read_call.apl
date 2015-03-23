decl
	integer status;
	integer a;
	integer fd;
	integer i ;
enddecl
integer main()
{
 status = Create("myfile.dat");
 print(status);
 fd = Open("myfile.dat");
 print(fd);
 i =44;
 status = Write(fd, i);
 print(status);
 status = Seek(fd, 0);
 print(status);
 status = Read(fd, i);
 print(i);
 print(status);
 status = Seek(fd, 45) ;
 print(status);
 i = 100;
 status = Write(fd, i);
 print(status);
 status = Seek(fd, 45);
 print(status);
 i = 200 ;
 status = Read(fd, i) ;
 print(i);
 print(status);
 status = Close(fd) ;
 print(status);
 status = Delete("myfile.dat") ;
 print(status);
 return 0; 
}
