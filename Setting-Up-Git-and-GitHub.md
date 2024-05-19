## Setting Up Git and GitHub

### Prerequisites
- Basic understanding of command-line interface (CLI).
- A GitHub account (sign up at [GitHub](https://github.com)).

### Step 1: Installing Git
1. **Windows**:
   - Download the installer from [git-scm.com](https://git-scm.com/downloads).
   - Run the installer and follow the prompts.
   - Open Git Bash (installed with Git) to use Git commands.

2. **Mac**:
   - Open the Terminal.
   - Install Homebrew if not already installed:
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
   - Install Git:
    ```
    brew install git
    ```

1. **Linux**:
   - Use the package manager specific to your distribution.
   - For Debian/Ubuntu: 
    ```
    sudo apt-get install git
    ```
   - For Fedora:
    ```
    sudo dnf install git
    ```


### Step 2: Configure Git (Using bash)
Set your username and email in Git:
```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

### Step 3: Generate SSH Keys
SSH keys allow you to securely connect to GitHub without needing to enter your username and password each time.

1. **Generate a new SSH key**:
   - Open your terminal (or Git Bash on Windows).
   - Generate the SSH key:
     ```bash
     ssh-keygen -t ed25519 -C "youremail@example.com"
     ```
   - When prompted, accept the default file location and enter a passphrase for added security.

   If you're using an older system that doesn't support `ed25519`, use `rsa` instead:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "youremail@example.com"
   ```

2. **Add the SSH key to the SSH agent**:
   - Start the SSH agent:
     ```bash
     eval "$(ssh-agent -s)"
     ```
   - Add your SSH key to the agent:
     ```bash
     ssh-add ~/.ssh/id_ed25519
     ```
   - If you used `rsa`, the command would be:
     ```bash
     ssh-add ~/.ssh/id_rsa
     ```

### Step 4: Add the SSH Key to GitHub
1. **Copy the SSH key to your clipboard**:
   - On Linux or Mac:
     ```bash
     cat ~/.ssh/id_ed25519.pub | pbcopy
     ```
     For `rsa`:
     ```bash
     cat ~/.ssh/id_rsa.pub | pbcopy
     ```
   - On Windows (Git Bash):
     ```bash
     clip < ~/.ssh/id_ed25519.pub
     ```
     For `rsa`:
     ```bash
     clip < ~/.ssh/id_rsa.pub
     ```

2. **Add the SSH key to your GitHub account**:
   - Go to [GitHub](https://github.com) and log in.
   - In the upper-right corner, click on your profile photo, then click **Settings**.
   - In the user settings sidebar, click **SSH and GPG keys**.
   - Click **New SSH key**.
   - Provide a descriptive title for the new key and paste your SSH key into the "Key" field.
   - Click **Add SSH key**.

### Step 5: Test the SSH Connection
To ensure everything is set up correctly, test the connection to GitHub:
```bash
ssh -T git@github.com
```
You should see a message like this:
```
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

### Step 6: Clone a Repository
Now that your laptop is connected to GitHub via SSH, you can clone repositories:

1. **Navigate to the directory where you want to clone the repository**:
   ```bash
   cd /path/to/your/directory
   ```

2. **Clone the repository using SSH**:
   - Go to the repository page on GitHub.
   - Click the green **Code** button, select **SSH**, and copy the SSH URL.
   - Clone the repository:
     ```bash
     git clone git@github.com:username/repository.git
     ```

### Summary
You’ve successfully connected your laptop with GitHub using SSH. You can now clone repositories, push changes, and collaborate securely without entering your credentials each time.