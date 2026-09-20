function alea(a,b){
    //alea de [a..b]
    return Math.trunc(Math.random()*(b-a+1))+a
}
function gen()
{x=alea(10,99)
t=document.getElementsByName("premier")

 
 nb=0
 for(i=2;i<x/2;i++)
	 {if(x%i==0)
		 {
			 nb=nb+1
		 }
	 }
 if(nb=0)
	 {
		 ok=true
	 }
 else{
	 ok=faux
 }
 if(ok=true && t[0].checked)
	 {
		alert("reponse correcte") 
	 }
 else{
	 alert("reponse incorrect ")
 }
}
function verif()
{c=document.getElementById("c").value
 p=document.getElementById("p").value
 ip=document.getElementById("ip").value
 if(c.length!=scount(c,"0","9")||c[0]!="0"&&c[0]!="1")
	 {
		 return false
	 }
 else if("a">p[0]>"z"|| p.length<=6)
	 {
		 return false
	 }
 else if(ip<=0)
	 {
		 return false
	 }
 else{
	 return true
 }
}
 function aff()
 {s=document.getElementById("so").value
   document.getElementById("s").innerHTML=s
	 
 }
function scount(ch,a,b)
{nb=0
 for(i=0;i<ch.length;i++)
	 {if(ch[i]>a && ch[i]<b)
		 {
			 nb++
		 }
	
	 }
 return nb
}


