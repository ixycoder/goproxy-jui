#!/bin/bash
rm -rf goproxy-jui-windows goproxy-jui-windows.7z

mkdir goproxy-jui-windows
mkdir goproxy-jui-windows/conf
cp conf/autostart.exe conf/proxysetting.exe conf/wininet.dll goproxy-jui-windows/conf/
cp -R dist/lib dist/GoProxy.jar  goproxy-jui-windows/
cp start.vbs bootstrap.bat goproxy-jui-windows/
cp -R jre_win goproxy-jui-windows/jre
cp ieshims.dll goproxy-jui-windows/
7z a  -t7z goproxy-jui-windows.7z goproxy-jui-windows  -mx=9 -ms=200m -mf -mhc -mhcf -mmt -r

rm -rf goproxy-jui-windows

