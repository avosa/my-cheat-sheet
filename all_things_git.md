# git cheat sheet

- git - version control system / command line tool
      - track changes in code & save versions
      - share & collaborate

- GitHub - web platform / service that hosts git repositories
         - hosts code under git management

## create & clone

- If you fork a repository, you add it to your github / full copy of the repo
- Cloning it, pushes it to your computer

- create new repository
```bash
# create folder locally
mkdir new_project
cd new_project
# create a new empty Git repo - a .git directory
# an initial branch is created without commits
# it's used to start using git on a project that is not yet under git
git init
# create a public repo on gitHub
gh repo create --public --source=.
# check out 
git remote -v
# open the new repo in your browser
gh repo view --web
```

- clone local repository
```bash
git clone /path/to/repository
```

- clone remote repository
```bash
# remote url format contains info on transport protocol, the address of the remote
# server and the path to the repository
# ssh synatx: 
# ssh://[user@]host.xz[:port]/path/to/repo.git/
# or alternative scp-like syntax used with ssh protocol:
# [user@]host.xz:path/to/repo.git/
git clone username@host:/path/to/repository

# clone a repository and name the local directory
git clone <repository-url> <directory-name>
# clone a repository and name the remote (<name>). If you do not wish to name the remote, Git will provide the default name origin
git clone <repository-url> --origin <name>
# clone a repository and checkout the specific branch
git clone <repository-url> --branch <branch-name>
# clone a repository with a specified number of commits (<depth>)
git clone <repository-url> --depth <depth>
# clone a repository without copying the repo’s tags
git clone <repository-url> --no-tags
```

> On Git URLs:
> the information given in the URL depends on the transport protocol
> Git supports ssh, git, http, and https protocols

- remove localy the history of the cloned repository
```bash
git rm -rf .git 
```

## create a Rails application

```bash
cd BeatrizSCLongley
rails new <name-rails-app> --database=postgresql 
      --skip-active-storage --skip-action-mailbox
cd <name-rails-app>

# create a new empty Git repo
git init
# create a public repo on gitHub
gh repo create --public --source=.
# check out 
git remote -v
# open the new repo in your browser
gh repo view --web
```

## add & remove 

- check changes to commit
```bash
git status
gst
```

- add / stage changes to your staging directory
```bash
# all a specific file
git add <file_name>
# add all changes
git add .
```

- remove / delete file
```bash
git rm <file_name>
```

## commit & synchronize

- commit / save changes to your repo
- commiting them takes a snapshot of the work done
```bash
git commit --message 'comment' 
git commit -m "message"

# both add and commit changes
# the -a will add all modified and deleted files in your working directory to the current commit
git commit -am "message"

# amend a git commit by editing the message in ""
git commit --amend "message"

# commiting using the default commit message
git commit --no-edit
```

- push changes to remote repository
```bash
git push <remote> <branch>
git push origin master
git push origin branch-name 
ggpush
```

- connect local repository to remote repository
```bash
git remote add origin <server>
```

- update local repository with remote changes
```bash
git pull origin master
ggpull
```

- show the history of commit logs
```bash
git log
git lg
```

- checkout a previous git commit
```bash
git checkout <commit hash>
```

## branches

- create a new branch
```bash
git checkout -b <name_of_branch>
# create a local branch from the remote Git branch and checkout that branch
git checkout -b <branch-name><remote-name>/<branch-name>
```

- switch to another branch (example master)
```bash
gco <name_of_branch>
git checkout master
```

- rename a branch
```bash
git branch -m <branch-name> <new-branch-name>
```

- delete branches
```bash
# delete a local branch
git branch -d <name_of_branch>
# delete a local Git branch with unmerged changes
git branch -D <branch-name>
# delete a remote branch
git push <remote> --delete <remote-branch-name>
```

- push branch to remote repo
```bash
git push origin <name_of_branch>
```

- print a list of local & remote branches
```bash
# print a list of just local branches
git branch
# print a list of just remote branches
git branch -r
# print a list of both local & remote branches
git branch -a
```

- clean up local unused branches
```bash
git sweep
```

## merge

- merge changes from another branch
```bash
git merge <name_of_branch>
git merge master
```

- view changes made
```bash
# inspect changes of a specific file
git diff <file_folder>
# between two branches
git diff <source_branch> <target_branch>
```

## tagging

-  create a tag (with example)
```bash
git tag <tag> <commit ID>
git tag 1.0.0 1b2e1d63ff
```

- get commit IDs
```bash
git log
```

- checkout a git tag
```bash
# in a detached HEAD state
git checkout <tag name>
# as a branch
git checkout -b <branch-name><tag-name>
```

## restore

- replace working copy with latest from HEAD
```bash
git checkout --<file_name>
```
