# Day 11 Answers: Deep Dive in Git & GitHub for DevOps Engineers

## 1. What is Git and why is it important?
Git is a distributed version control system developed by Linus Torvalds in 2005. It allows developers to track changes, collaborate, and manage code versions efficiently.

## Importance of Git:

➡️ Version Control: Keeps track of changes, allowing you to revert to previous versions if needed.</br>
➡️ Collaboration: Multiple developers can work on the same project simultaneously.</br>
➡️ Repositories: A Git repository (or repo) is like a project's central hub where everything related to your work is stored and managed. There are two main types:</br>
 i) Local Repository: This is a copy of the repository which is stored in your computer. You can work on your project and make changes here.</br>
 ii) Remote Repository: This is stored on a server, like GitHub, where you and others can share and work on a project.</br>
➡️ Commits: Every time you make changes and save them in Git, these are called commits. The repository keeps track of all the commits you have made.</br>
➡️ Branches: A repository allows you to create Branches and work on new features and fixes. For example, you can have a "main" branch for stable code and a "feature" branch for new features you're developing.</br>
➡️ Merging: Once you are done with the branches you have made, you can merge those branches into main branch. This adds the changes you have made in the rest of the project.</br>
➡️ Cloning: Cloning is a process of making a complete copy of Git repository. It's like copying the entire project from central location ( like website) to your own computer.</br>
➡️ Backup:: Acts as a backup of your codebase.</br>


## 2. What is the difference between Git and GitHub?

| Feature | Git | GitHub |
|----------|-----|---------|
| **Type** | Version Control System | Web-based Platform using Git |
| **Interface** | Command-line tool | Web UI and Desktop interface |
| **Repository** | Manages local repositories | Hosts remote repositories online |
| **Collaboration** | Limited to local operations | Supports collaboration, pull requests, and issue tracking |
| **Usage** | Installed on local machine | Accessed through browser or Git client |
| **Main Purpose** | Tracks code changes locally | Enables team collaboration and remote version control |

## 3. What is the difference between a local & remote repository? How to connect local to remote?

| Feature | Local Repository | Remote Repository |
|----------|------------------|-------------------|
| **Storage** | Stored on your local machine | Hosted on a remote server (e.g., GitHub) |
| **Purpose** | Contains your working directory and Git database | Enables collaboration and code sharing among developers |
| **Access** | Accessible only to you (on your computer) | Accessible to team members via the internet |
| **Example Command** | `git init` | `git remote add origin <URL>` |

### 🔗 Connecting Local Repository to Remote
| Step | Command | Description |
|------|----------|-------------|
| 1️⃣ | `git init` | Initialize a new local Git repository |
| 2️⃣ | `git remote add origin <URL>` | Link your local repo to a remote GitHub repository |
| 3️⃣ | `git push -u origin main` | Push your local commits to the remote repository |

## 4. What is the difference between Main Branch and Master Branch?

| Feature | Main Branch | Master Branch |
|----------|--------------|----------------|
| **Default Usage** | Used as the new default branch name in modern repositories | Was the traditional default branch name in older repositories |
| **Purpose** | Serves as the primary branch for production-ready code | Also served as the main branch for production-ready code |
| **Adoption** | Adopted by many organizations to promote inclusive terminology | Used historically before the shift to “main” |
| **Created In** | Newer Git versions and platforms (like GitHub) | Older Git versions and repositories |
| **Example** | `main` | `master` |

## 5.How do you create a new repository on GitHub?

i. Go to GitHub.</br>
ii. Click on the + icon in the top right corner.</br>
iii. Select New repository.</br>
iv. Enter a repository name (e.g., "DevOps").</br>
v. Click Create repository.</br>

# Tasks with Answers

Task 1:</br>
⚪ Set your user name and email address, which will be associated with your commits.
Answer

image

Task 2:</br>
⚪ Create a repository named "DevOps" on GitHub.
Answer

image

⚪ Connect your local repository to the repository on GitHub.
Answer

image

⚪ Create a new file in Devops/Git/Day-12.txt & add some content to it.
Answer

image

⚪ Push your local commits to the repository on GitHub.
Answer

image

⚪ After that if you check it on GitHub then it's output will look like this

image

image

image

