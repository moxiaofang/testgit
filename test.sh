#!/bin/bash
#位置参数实例1
:<< eof case $1 in
	start )
		echo 'start....'
		;;
	stop)
		echo 'stop...'
		;;
esac
eof


# $# $* $? $0 的应用
:<<eof
 echo "一共有${#}多个参数"
 echo "分别是${*}"
 lll
 if [[ $? == 0 ]]; then
 	echo '上条命令执行成功'
 else
 	echo '上条命令执行失败'
 fi
 echo "显示当前执行的脚本名称$0"

eof


#位置参数之相加运算
:<<eof
tot=0
for i in $*; do
	tot=$(($tot+$i))
done
echo "这些参数相加得$tot" 
 
num1=`expr 4 + 2`
num2=`expr 3 \* 3`   #乘法要加转义字符
echo " 4+2 = $num1  ,  3*3 = $num2 "  
eof

#w文件测试
if [ -e ./file1 ]; then
	echo "file1 is exit"
	else
	echo "file is not exit"
fi

 