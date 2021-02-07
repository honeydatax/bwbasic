dim t$ 
dim h!
dim n!
	randomize timer()
	h!=1
	t$="hello world"
	gosub title
		gosub style
			print "table , th ,td { border: 8px solid black;}"
			
		gosub clstyle
		gosub par
			gosub bold
				h=1
				gosub heads
					print "loto" 
				gosub closesheads
			gosub closesbold
		gosub closespar
		gosub table
			for n!= 0 to 16
				gosub tablln
					gosub tablrw
						print str$(n!)
					gosub cltablrw
					gosub tablrw
						print str$(int(rnd()*49+1))
					gosub cltablrw
				gosub tablln
			next
		gosub closestable
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
list:
	print "<ul>"
return
closeslist:
	print "</ul>"
return
elementlist:
	print "<li>"
return
clselist:
	print "</li>"
return
table:
	print "<table>"
return
closestable:
	print "</table>"
return
tablln:
	print "<tr>"
return
cltablln:
	print "</tr>"
return
tablrw:
	print "<th>"
return
cltablrw:
	print "</th>"
return
style:
	print "<style>"
return
clstyle:
	print "</style>"
return
