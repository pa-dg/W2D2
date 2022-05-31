Terminal Notes:

cd - root directory ~/ 
ls - list
        - ls -a shows hidden files
mkdir - create new directory
touch - create new file
cp - copy file or folder to new location
    - rf - add -rf flag 
mv - move file or folder to new location
rm - remove file/folder, once removed will not be seen in trash bin


Aliases
    - shorten common commands so you don't have to type as much
    - add to .zshrc or .bashrc
    alias name_of_alias ='command that you want alias to represent'


Functions
    - perform some command that requires a dynamic input
    - add to .zshrc or .bashrc
    function function_name() { #commands you want to execute, parameters represented by $1, $2,..$n }
    - mtr <path-of-file>

    function mtr() {
        mv $1 ~/
    }

Customize your prompt
- .zsh
    %n: username
    %

Colors - Prompt
- export PS1
- %F{color}%f
-text that you want to be that color goes between teh closing

LS Colors
- LSCOLORS to .zshrc


GIT
    - Version Control System (VCS)
    - keeps track of changes to files over time
    - let us go back and forth to prev ver of projects
    - A 'Git Repository' (or Git repo) contains files and records of changes

GITHUB
    - Online cloud storage for Git repo
    - Company that is fully separate from Git itself

GIT Basic Commands

git init
    - creates new Git repo at the current directory
    - NEVER nest Git repos!
    - NEVER create a repo at the root directory!

git status
    - see changes from last "commit"
    - always run before git init to double-check you're not currently in a Git repo!

git add .
    - confirm you're in top level of your git repo before running
    - adds all files in the current directory and its subfolders
    - makes files ready to commit but DOES NOT COMMIT THEM

git commit -m "<message>"
    - message shoudl communicate what has been changed since last commit
    - creates newly saved version of the project
    - can only commit files that have been git add -ed

 - you will usually use both of these in sequence
 - commit frequently!    

git push
    - "pushes" changes from your local comp to Github
    - can do as frequently as you'd like, but only NEED to do at the end of the day
    - push your work for the day before submitting the link to your GitHub Repo


Reminders:
- NEVER nest repos!
    - always run git status before git init to be sure
- git add & git commit are needed to save a new commit
- you need att least one file in a repo before you can make the first commit











REQUIRE 