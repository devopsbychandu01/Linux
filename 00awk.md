awk {print} 01CommonCommands.md
awk {print} 07path.md
awk {print $1} 07path.md
awk '{print $1}' 07path.md
awk '{print $2}' 07path.md
awk '{print $3}' 07path.md
awk '{print $0}' 07path.md
awk '{print $1,$3}' 07path.md
ll | awk '{print $4}'
echo "hello world" | awk '{print $1}'
awk '{print $NF}' 07path.md
awk -F':' '{print $2}' /etc/passwd
awk -F':' '{print $1}' /etc/passwd