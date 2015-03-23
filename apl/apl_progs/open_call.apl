decl
	integer fd1;
	integer fd2;
	integer status;
	integer wordtw;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	fd1 = Open("afile.dat");
	print(fd1);
	fd1 = Open("myfile.dat");
	print(fd1);
	wordtw=15;
	status = Write(fd1,wordtw);
	print(status);
	status = Seek(fd1, 1);
	//print(status);
	//status = Write(fd1, "supe");
	print(status);
	fd2 = Open("myfile.dat");
	print(fd2);
	status = Delete("myfile.dat");
	print(status);
	status = Close(-1);
	print(status);
	status = Close(14);
	print(status);
	status = Close(fd2);
	print(status);
	status = Delete("myfile.dat");
	print(status);
	status = Close(fd1);
	print(status);
	//status = Close(fd1);
	//print(status);
	status = Seek(fd1, 1);
	print(status);
	status = Delete("myfile.dat");
	print(status);
	status = Seek(fd1, 1);
	return 0;
}
