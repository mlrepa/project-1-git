
# Project forking workflow (GitLab)

## 1. Setup SSH 

- Learn more about [Use SSH keys to communicate with GitLab](https://docs.gitlab.com/ee/user/ssh.html)
- [Generate an SSH key pair](https://docs.gitlab.com/ee/user/ssh.html#generate-an-ssh-key-pair)
- [Add an SSH key to your GitLab account](https://docs.gitlab.com/ee/user/ssh.html#add-an-ssh-key-to-your-gitlab-account)

## 2. Create a fork

- Create a fork using GitLab UI by following steps in the GitLab docs: [Creating a fork](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork)
- Create a new `dev` branch (in GitLab UI) 

## 3. Add a New Remote to your Git Repo

```bash
# Set a new remote 
git remote add myfork FORK-REPO-URL 

# Update branches and checkout into `dev` branch
git fetch myfork
git checkout dev 

# Rename branch 
git branch -m 4-git-fork
```

## 4. Add `.gitignore` and `data/` directory 

Add `.gitignore`:
- use wth VScode IDE:
    - press `CTRL + Shift + P` (`CMD + Shift + P` on macOS) to open the command palette.
    - type in `Add gitignore` in the command palette.
- using CLI:
    ```bash
    touch .gitignore
    ```

Update code & commit 

```bash
# Create an empty `data/` directory
mkdir data

# Create a `file.txt` in `data` dir 
touch data/file.txt

# Add to `.gitignore` but make it visible in the Git repo
echo "data/*" >> .gitignore 

# Commit & push `4-git-fork` branch to GitLab (to user fork)
git add .gitignore && git commit -m "Add .gitignore and data/ directory"
git push myfork 4-git-fork
```

Expected results: 
- there is no `file.txt` added to Git history 
- there is no `data` directory in GitLab (forked repo)


## 5. Update: make `data/` directory visible in GitLab
```bash
# Create `data/.gitignore` 
touch data/.gitignore 

# Add `data/.gitignore` to Git
echo '!.gitignore' >> data/.gitignore

# Commit & push updates
git add .gitignore && git commit -m "Make data/ empty but visible"
git push myfork 4-git-fork

# Delete `4-git-fork` branch in the local repo
git branch -d 4-git-fork
```

## 6. Create a Merge Request
- Create a Merge Request (via GitLab UI) to the `main` branch in the parent repository (the course workspace) 
- Wait... 
- Check the test assignment report