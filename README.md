# Project-1-Git 

## Tutorials and Branches
Tutorials in this repo require different Git branches to be activated. 
Follow the tutorial instructions and table below.

| Tutorial                 | Target branch |
| ---                      | -----------   |
| 1-cli-get-started.md     | -             |
| 2-git-basics.md          | -             |
| 3-git-remote.md          | main          |
| 4-git-fork.md            | main          |
| 5-git-assignment.md      | main          |

# CI/CD

CI pipeline in [`.gitlab-ci.yml`](./.gitlab-ci.yml) builds Docker image 
and pushes it a container registry of the project `school/testing`.

To be able to login docker registry define in subgroup `school/modules` CI/CD Variable:

```dotenv
PAT=<your-gitlab-personal-access-token>
```