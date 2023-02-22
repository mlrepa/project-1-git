
# Work with remote repository (GitLab)

## 1. Setup SSH 
- Learn more about [Use SSH keys to communicate with GitLab](https://docs.gitlab.com/ee/user/ssh.html)
- [Generate an SSH key pair](https://docs.gitlab.com/ee/user/ssh.html#generate-an-ssh-key-pair)
- [Add an SSH key to your GitLab account](https://docs.gitlab.com/ee/user/ssh.html#add-an-ssh-key-to-your-gitlab-account)

## 2. Clone a repository

GitLab docs: [Clone a repository](https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html#clone-a-repository)

1. Authenticate with GitLab by following the instructions in the SSH documentation.
2. Go to your project’s landing page and select Clone. Copy the URL for Clone with SSH.
3. Open a terminal and go to the directory where you want to clone the files. 
4. Copy this REPO_URL (for SSH) and clone the repo
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
git checkout -v dev

# Create a config file 
touch config.yaml 
echo "repo: project-1-git" >> config.yaml
cat config.yaml  

# Commit changes
git add config.yaml && git commit -m "Add config.yaml"

# Push to GitLab 
git push origin dev
```

### 5. Create a Merge Request
- Create a Merge Request (via GitLab UI) to `main` branch
- Wait... 
- Check the test assignment report