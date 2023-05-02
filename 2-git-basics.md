
# Get started with Git (local)

## 1. Install Git 

- follow [Getting Started - Installing Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- configure default initial branch name:

    ```bash
    git config --global init.defaultBranch main
    ```

## 2. Git - Basics 

```bash

# Create a Git repo
mkdir git-demo && cd git-demo

# Initiate Git repo
git init 

# Update code: update 
touch file.txt 
echo "Hello Git!" >> file.txt
cat file.txt 

# Check Git status and save updates
git status 
git add file.txt 
git commit -m "My first Git commit"

# Create a branch
git branch dev

# Checkout to a new branch
git checkout dev 

# Update and commit
echo "My second commit" >> file.txt
cat file.txt 
git add . && git commit -m "Update file.txt: add a new line"

# Merge a `dev` branches to `main`
git checkout main 
cat file.txt

git merge dev
cat file.txt
```
