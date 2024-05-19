## Basic Git Commands

### Checking Status
- View the status of your working directory and staging area:
  ```bash
  git status
  ```

### Adding Files
- Stage changes (add files to the staging area):
  ```bash
  git add filename
  git add .
  ```

### Committing Changes
- Commit changes with a message:
  ```bash
  git commit -m "Your commit message"
  ```

### Viewing Commit History
- View the commit history:
  ```bash
  git log
  ```

### Pushing Changes
- Push changes to the remote repository:
  ```bash
  git push origin branch-name
  ```

### Pulling Changes
- Pull changes from the remote repository:
  ```bash
  git pull origin branch-name
  ```

### Creating and Switching Branches
- Create a new branch:
  ```bash
  git branch new-branch-name
  ```
- Switch to a branch:
  ```bash
  git checkout branch-name
  ```

### Merging Branches
- Merge a branch into the current branch:
  ```bash
  git merge branch-name
  ```

### Handling Merge Conflicts
- Git will alert you if there are conflicts.
- Open the conflicting files and resolve the conflicts.
- After resolving, add the resolved files:
  ```bash
  git add filename
  ```
- Commit the merge:
  ```bash
  git commit -m "Resolved merge conflict"
  ```

## Summary
- **Git**: A powerful tool for version control.
- **GitHub**: A platform for hosting Git repositories and collaborating.
- **Basic Workflow**:
  1. Initialize a repository.
  2. Connect to GitHub.
  3. Add, commit, push, and pull changes.
  4. Use branching and merging for collaborative work.

By mastering these basics, beginners can effectively start managing their projects and collaborating with others using Git and GitHub.