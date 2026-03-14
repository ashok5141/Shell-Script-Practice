# Shell-Script-Practice
Shell script revision for the automation DevOps
- Variables
- Data types
- Conditions
- Functions
- Loops
- Error handling

### Pseudo code 
- 95% thinking + design 5% coding
- pseudo code -> no syntax, just assumption

```bash
# if today is sunday, enjoy the holiday otherwise go to office
today=monday
if(today != sunday){
    print ("Goto school")
}
else{
    print("Take holiday. enjoy")
}
```

- Even or Odd
    - 15/2 -> 1
    - If reminder is 0 -> even
    - Otherwise odd

```bash
number=15
remainder=15%2
remainder=1

if (remainder == 0){
    print("Even number")
}
else{
    print("Odd number")
}
```


##### Special Variable
- $1 $2 . . . $N args passed through script
- All variables passed to script: $@
- Number if variables passed to script: $#
- Script name: $0
- Present which directory you are in: $PWD
- Who is running this script: $USER
- Home directory of the user: $Home
- PID of the script: $$
- sleep 100 &, Background process id: $!