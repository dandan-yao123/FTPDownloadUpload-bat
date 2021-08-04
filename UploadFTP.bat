@echo off
set "year=%date:~10,4%"
set "month=%date:~4,2%"
set "day=%date:~7,2%"

echo open 172.22.12.62 >ftp.up
echo advantech>>ftp.up
echo P@ssw0rd>> ftp.up
echo cd /Report >> ftp.up
echo mkdir %year%-%month%-%day% >> ftp.up
echo cd /Report/%year%-%month%-%day% >> ftp.up
Echo binary>>ftp.up
Echo lcd C:\Users\Administrator\Desktop\DeviceOnAutoTest\DeviceOnBVTAutoTest1.1.5>> ftp.up
Echo put *BVT*.html>> ftp.up
Echo bye>>ftp.up
FTP -s:ftp.up
del ftp.up /q