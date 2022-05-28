# Terminal

## General

- print working directory / path to current directory
```bash
pwd
```

- list files & directories
```bash
ll
ls
# see all files, even the hidden ones (that start with .)*
ll -a
```

- change directory
```bash
cd <directory-name>
# change to one directory / to two directories above
cd ..
cd ...
```

- create a directory / a file
```bash
mkdir <directory-name>
touch <file_name>
```

- move location of a file or folder OR change the name of a file or folder
```bash
mv <file-to-move> <where-to-move>
mv <file_name> <new_file_name>
```

- delete a file / diretory
```bash
rm <file_name>
rm -rf <directory-name>
```

- open folder / file
```bash
open .
open <file_name>
```

- print the contents of a file on the terminal
```bash
cat <file_name>
```

- open file in either Sublime or Visual Studio Code
```bash
stt
code .
```

## Ruby specific commands

- run a ruby file in terminal
```bash
ruby path/to/file.rb
```

- start program REPL to write ruby on the terminal
```bash
irb
```

> REPL:<br>
> Stands for Read–eval–print loop and it's also termed an interactive toplevel or language shell<br>
> It is a simple interactive computer programming environment that takes single user inputs, executes them, and returns the result to the user<br>
> - It **R**eads the user input (expression)
> - It **E**valuates the result of this expression
> - It **P**rints the result 
> - It **L**oops back to point 1, waiting for user input

## Vim

Modal editor - different behaviours depending on active mode
Text editor that makes creating and changing text very efficiently

```bash
# change mode
esc
# close window
:q
# leave vim - won't save changes
:q!
# jump back 
CTRL + 0

# edit a file
vim file.txt
# start inserting text insert mode
i
# write the file - save and exit
zz
```

## rubocop.yml

```bash
# in the ~ location, find the file
~ stt .rbenv/shims/rubocop 
# inside stt, find the rubocop.yml file to make changes to the rules
Command + P        
```

## rbenv

Lightweight Ruby version management tool (lighter than RVM)
It manages multiple Ruby 'environments'
It allows to quickly switch between Ruby implementations either on local directory or default 'system-wide' basis

```bash
# currently active Ruby versions & all known ones
rbven verions         
# set rbenv as current ruby version
rbenv global 2.6.6     
# set ruby version for your local directory
rbenv local 2.6.6      
```

## mkmf.log

File bundled with the gem when you built it / install it

```bash
# find the file
find ~/.rbenv -name mkmf.log
```
