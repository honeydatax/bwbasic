dim t$ 
dim h!
dim n!
	h!=1
	t$="hello world"
	gosub title
		gosub par
		gosub bold
		h=1
		gosub heads
		gosub datetime
		gosub closesheads
		gosub closesbold
		gosub closespar
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
bold:
	print "<b>"
closesbold:
	print "</b>"
return
datetime:
	print date$()+" "+time$()
return
