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
- $@ vs $*
    - $@ treats args seperately
    - $* treats as single args

##### Data types
- Variables are hoilding data
    - mobile number -> numbers
        - integers -> -33768 -> 33768
        - float -> 45.90
        - decimal -> long number
        - complex -> 4+8i
    - name -> string
    - major -> yes or no boolean
    - skills -> devops aws decker kubernetes -> list of skills
    - Skills -> map or dictonary
        - Devops: 4 -> key -> value
        - Docker: 3
        - Kubernetes: 2

- Some issues in the data storage mistake **ariane 5 explosion**
- Everything in the bash is - Number, string
    - everything is string in shell

##### Conditions
```bash
if or when
if [ expression ]; then
    code here
else
    code here
fi
```