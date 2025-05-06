---
title: AWS Solutions Architect Vault
tags: [aws, obsidian, certification, learning, cloud]
created: 2025-05-06
updated: 2025-05-06
---

# AWS Solutions Architect Vault

This is a personal knowledge vault designed to support my study and certification as an **AWS Certified Solutions Architect**. I use [Obsidian](https://obsidian.md/) for structured, interlinked note-taking.

It is built to complement the [AWS SkillBuilder](https://skillbuilder.aws) coursework, real-world architecture patterns, and exam preparation strategies. Notes are organised by AWS domains and services, with templates, integration links, and embedded practice questions.

---

## 🧠 Why This Exists

I wanted a system that:

- Allows **interconnected, searchable notes** (via Obsidian’s graph view)
- Supports **long-term memory and practical use** of AWS services
- Helps prep for **scenario-based questions** found on AWS exams
- Serves as a reusable knowledge base for **future cloud projects**

---

## 🗂 Folder Structure

```
AWS-Solutions-Architect/
├── 00-Foundation/
├── 01-Compute/
├── 02-Networking/
├── 03-Storage/
├── 04-Database/
├── 05-Security/
├── 06-DevOps-and-Monitoring/
├── 07-Application-Integration/
├── 08-Architecture/
├── 09-Practice-Questions/
├── Templates/
```

Each folder includes `.md` notes on specific services or concepts. Example:  
`03-Storage/S3.md` covers Amazon S3: features, integrations, pitfalls, and example exam questions.

---

## 📘 Note Format

Notes follow a consistent template:

```markdown
# {{TOPIC NAME}}

## 📌 Summary
One-paragraph summary of the AWS service or concept.

## 🛠️ Core Features
- Key capabilities and limits
- Pricing model (if relevant)

## 🔗 Integrations
- Common service integrations (e.g., IAM, VPC, CloudWatch)

## 📘 Use Cases
- When and why you’d use it

## ⚠️ Common Pitfalls
- Misconceptions or tricky exam traps

## 🧪 Practice Question
> Example scenario or comparison question

## 💭 Possible Implementation Notes
- Hypotheses or speculation about how AWS likely built this

## 📚 Resources
- [Official AWS Docs](https://docs.aws.amazon.com/)

## 🔁 Linked Notes
- [[IAM]], [[S3]], etc.
```

---

## ✅ Git & Version Control

This vault is version-controlled with Git, so I can:

- Track changes to content
- Branch into specialty areas (e.g., Serverless, Hybrid, Cost Optimisation)
- Safely sync between machines

To push updates to GitHub:

```bash
git add .
git commit -m "Update: added notes on <service>"
git push
```

---

## 🔐 Privacy

If you're cloning this structure: consider setting your GitHub repo to **Private** while working on it, especially if notes contain personal strategies or diagrams.

---

## 🚀 Getting Started (for others)

If you'd like to use this structure:
1. Clone the repo
2. Open in Obsidian
3. Start taking notes in the `Templates/Topic-Note-Template.md` format

---

## 🌱 Author

Created by [mmicire](https://github.com/mmicire)  
Inspired by the AWS Certified Solutions Architect learning path.
