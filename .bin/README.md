# create-aws-vault.sh

This script sets up a fully structured [Obsidian](https://obsidian.md/) vault for studying the **AWS Certified Solutions Architect** certification.

It creates:

- A standardized folder layout for AWS services (e.g., Compute, Storage, Security)
- Starter `.md` notes for major services
- A `Topic-Note-Template.md` for consistent note-taking
- A clean `.gitignore` for Obsidian metadata and system files
- A pre-filled `README.md` with usage instructions and structure overview
- A fully initialized Git repository for version control

---

## 🧪 Requirements

- Bash shell (Linux, macOS, WSL, etc.)
- Git installed and configured

---

## 🚀 How to Use

1. Make the script executable:
   ```bash
   chmod +x create-aws-vault.sh
   ```

2. Run it:
   ```bash
   ./create-aws-vault.sh
   ```

3. A folder called `AWS-Solutions-Architect/` will be created and ready to open in Obsidian.

4. To push to GitHub:
   ```bash
   cd AWS-Solutions-Architect
   git remote add origin git@github.com:<your-username>/aws-solutions-architect-vault.git
   git push -u origin main
   ```

---

## 🔐 Optional

Set your GitHub repository to **Private** to keep your study notes secure and personal.

---

## 📘 Author

Created by [mmicire](https://github.com/mmicire) for personal certification prep.

