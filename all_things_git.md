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
git clone username@host:/path/to/repository
```

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

- add / stage changes from a specific file or add all changes
```bash
git add <file_name>
git add .
```

- remove / delete
```bash
git rm <file_name>
```

## commit & synchronize

- commit changes or add and commit changes
- commiting them takes a snapshot of the work done
```bash
git commit --message 'comment' 
git commit -m "message"
git commit -am "message"

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

## branches

- create a new branch
```bash
git checkout -b <name_of_branch>
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

- delete local branch
```bash
git branch -d <name_of_branch>
# delete a local Git branch with unmerged changes
git branch -D <branch-name>
```

- delete a remote git branch
```bash
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

## restore

- replace working copy with latest from HEAD
```bash
git checkout --<file_name>
```
