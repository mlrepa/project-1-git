
# Work with the remote repository (GitLab)

## 1. Setup SSH 
- Learn more about [Use SSH keys to communicate with GitLab](https://docs.gitlab.com/ee/user/ssh.html)
- [Generate an SSH key pair](https://docs.gitlab.com/ee/user/ssh.html#generate-an-ssh-key-pair)
- [Add an SSH key to your GitLab account](https://docs.gitlab.com/ee/user/ssh.html#add-an-ssh-key-to-your-gitlab-account)

## 2. Clone a repository

GitLab docs: [Clone a repository](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html#clone-a-repository)

1. Open a terminal and go to the directory where you want to clone the files. 
2. Copy this repo Git SSH url (REPO_URL) and clone the repo
```
git clone REPO-URL
```
- Note: 
  - Git automatically creates a folder with the repository name and downloads the files there.


## 3. Update and push to remote

```markdown
# Go to the new directory:
cd project-1-git

# Create `dev` branch and checkout to it
git checkout -b dev

# Create a config file 
touch config.yaml 
echo "repo: project-1-git" >> config.yaml
cat config.yaml  

# Commit changes
git add config.yaml && git commit -m "Add config.yaml"

# Push to GitLab 
git push origin dev
```

## 4. Create a Merge Request
- Create a Merge Request (via GitLab UI) to the `main` branch
- Wait... 
- Check the test assignment report