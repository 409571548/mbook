@echo off
set projectAddr=%1
echo �����������а�����...
cd %projectAddr%/reptile
If exist node_modules (
   echo node���Ѱ�װ...
) Else (
   cnpm install
)
node rankReptile.js