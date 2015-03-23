decl
	integer status;
	integer fd1;
	integer fd;
    integer i;
	string sp;
	integer bubblesort(integer a);
enddecl
integer bubblesort(integer a)
{
	integer i,j,k,x,y;
	i=0;
	while i<a do
		j=0;
		while j<a-i-2 do
            status = Seek(fd, j);
            status = Read(fd, x);
            status = Read(fd, y);
			if x>y then
				status = Seek(fd1, j);
				status = Write(fd1, y);
				status = Write(fd1, x);
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}

integer main()
{
status = Create("myfile.txt") ;
print(status) ;
fd = Open("myfile.txt");
print(fd);
i = 0;
while (i<2000) do
	status = Write(fd, (37*(i*i))%1009) ;
	i = i+1;
endwhile ;
fd1 = Open("myfile.txt") ;
print(fd1);
status = bubblesort(2000) ;
status = Close(fd);
print(status);
status = Close(fd1);
print(status);
return 0;
}
