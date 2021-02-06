dim t$ 
t$="hello world"
gosub title
print t$
gosub closes
quit

title:
print "<html><head><title>"+t$
print "</title></head><body>"
return 
closes:
print "</body></html>"
return
