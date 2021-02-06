dim t$ 
dim h!
dim n!
	h!=1
	t$="hello world"
	gosub title
	for n!=0 to 5
		gosub par
		h! = n! + 1 
		gosub heads
		print t$
		gosub closesheads
		gosub closespar
	next n!
	gosub closes
quit

title:
	print "<html><head><title>"+t$
	print "</title></head></body>"
return 
closes:
	print "</body></html>"
return
heads:
	print "<h"+mid$(str$(h!),2,1)+">"
return
closesheads:
	print "</h"+mid$(str$(h!),2,1)+">"
return
par:
	print "<p>"
return
closespar:
	print "</p>"
return

