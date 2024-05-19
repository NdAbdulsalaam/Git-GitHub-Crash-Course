## Creating a GitHub Repository
1. Go to [GitHub](https://github.com) and log in.
2. Click the “+” icon in the top right corner and select “New repository”.
3. Fill in the repository name, description (optional), and choose between public or private.
4. Initialize the repository with a README if desired.
5. Click “Create repository”.

### Connecting Local Repository to GitHub

1. **Initialize Git in Your Project Directory**:
   - Open your terminal and navigate to your project directory:
     ```bash
     cd /path/to/your/project
     ```
   - Initialize a new Git repository:
     ```bash
     git init
     ```

2. **Add Remote Repository**:
   - Copy the URL of your GitHub repository (found on the repository page under the “Code” button).
   - Add the remote repository:
     ```bash
     git remote add origin https://github.com/yourusername/your-repository.git
     ```

3. **First Commit and Push**:
   - Add your project files to the staging area:
     ```bash
     git add .
     ```
   - Commit your changes:
     ```bash
     git commit -m "Initial commit"
     ```
   - Change branch
     ```bash
     git branch -M main
     ```
   - Push your changes to GitHub:
     ```bash
     git push -u origin main
     ```