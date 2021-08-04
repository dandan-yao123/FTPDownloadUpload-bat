@echo on
set ftpUser=advantech
set ftpPass=P@ssw0rd
set ftpIP=172.22.12.82
set ftpFolder=/DeviceOn-Server
set LocalFolder=F:/
 
set ftpFile=%temp%/TempFTP.txt
>"%ftpFile%" (
  echo,%ftpUser%
  echo,%ftpPass%
  echo cd "%ftpFolder%"
  echo lcd "%LocalFolder%"
  echo bin
  echo mget *.*
  echo bye
)
start ftp -v -i -s:"%ftpFile%" %ftpIP%


