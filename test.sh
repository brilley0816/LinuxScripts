if [ -f ~/.zshrc ]; then 
	echo "brilley"
else 
	echo "yanyan"
fi

if [ -d ~/temp ]; then
	echo "there exits dir temp"
fi
# the blank is very important, because there will be errors, such as 
# ./test.sh: line 11: [!: command not found
if [ ! -d ~/teee ]; then
	echo "there is not exists dir teee"
fi

