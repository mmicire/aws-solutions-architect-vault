#!/bin/bash

VAULT_DIR="AWS-Solutions-Architect"

# Define folders
folders=(
  "00-Foundation"
  "01-Compute"
  "02-Networking"
  "03-Storage"
  "04-Database"
  "05-Security"
  "06-DevOps-and-Monitoring"
  "07-Application-Integration"
  "08-Architecture"
  "09-Practice-Questions"
  "Templates"
)

# Create folder structure
for folder in "${folders[@]}"; do
  mkdir -p "$VAULT_DIR/$folder"
done

# Create representative topic files
touch "$VAULT_DIR/01-Compute/EC2.md"
touch "$VAULT_DIR/01-Compute/Lambda.md"
touch "$VAULT_DIR/01-Compute/Elastic-Beanstalk.md"
touch "$VAULT_DIR/01-Compute/Auto-Scaling.md"
touch "$VAULT_DIR/02-Networking/VPC.md"
touch "$VAULT_DIR/02-Networking/Route-53.md"
touch "$VAULT_DIR/02-Networking/Direct-Connect.md"
touch "$VAULT_DIR/02-Networking/VPN.md"
touch "$VAULT_DIR/03-Storage/S3.md"
touch "$VAULT_DIR/03-Storage/EBS.md"
touch "$VAULT_DIR/03-Storage/EFS.md"
touch "$VAULT_DIR/03-Storage/Storage-Gateway.md"
touch "$VAULT_DIR/04-Database/RDS.md"
touch "$VAULT_DIR/04-Database/DynamoDB.md"
touch "$VAULT_DIR/04-Database/Redshift.md"
touch "$VAULT_DIR/04-Database/Aurora.md"
touch "$VAULT_DIR/05-Security/KMS.md"
touch "$VAULT_DIR/05-Security/Shield-and-WAF.md"
touch "$VAULT_DIR/05-Security/Security-Hub.md"
touch "$VAULT_DIR/05-Security/Inspector.md"
touch "$VAULT_DIR/06-DevOps-and-Monitoring/CloudFormation.md"
touch "$VAULT_DIR/06-DevOps-and-Monitoring/CloudWatch.md"
touch "$VAULT_DIR/06-DevOps-and-Monitoring/CodePipeline.md"
touch "$VAULT_DIR/06-DevOps-and-Monitoring/Config.md"
touch "$VAULT_DIR/07-Application-Integration/SQS.md"
touch "$VAULT_DIR/07-Application-Integration/SNS.md"
touch "$VAULT_DIR/07-Application-Integration/EventBridge.md"
touch "$VAULT_DIR/07-Application-Integration/Step-Functions.md"
touch "$VAULT_DIR/08-Architecture/Well-Architected-Framework.md"
touch "$VAULT_DIR/08-Architecture/Resilience-Design.md"
touch "$VAULT_DIR/08-Architecture/Cost-Optimization.md"
touch "$VAULT_DIR/08-Architecture/Hybrid-Architectures.md"
touch "$VAULT_DIR/09-Practice-Questions/EC2-Practice.md"
touch "$VAULT_DIR/09-Practice-Questions/VPC-Practice.md"
touch "$VAULT_DIR/09-Practice-Questions/Mixed-Set-1.md"

# IAM.md
cat <<EOF > "$VAULT_DIR/00-Foundation/IAM.md"
# IAM

## 📌 Summary
Identity and Access Management (IAM) controls user access to AWS services.

## 🛠️ Core Features
- Fine-grained permissions via policies
- IAM users, groups, and roles
- Support for MFA
- Temporary credentials via STS

## 🔗 Integrations
- [[EC2]], [[S3]], [[CloudWatch]]

## 📘 Use Cases
- Assign EC2 roles to access S3 buckets
- Enforce MFA for sensitive operations

## ⚠️ Common Pitfalls
- Overly permissive policies (use least privilege)
- Confusing roles with users

## 🔁 Linked Notes
- [[Global-Infrastructure]]

## 🧪 Practice Question
> What’s the difference between an IAM role and an IAM user?
EOF

# Global-Infrastructure.md
cat <<EOF > "$VAULT_DIR/00-Foundation/Global-Infrastructure.md"
# Global Infrastructure

## 📌 Summary
AWS is built on a global network of Regions, Availability Zones (AZs), and Edge Locations.

## 🛠️ Core Features
- Regions are isolated locations
- AZs provide high availability within regions
- Edge locations used by CloudFront for caching

## 🔗 Integrations
- [[S3]], [[Route-53]], [[EC2]]

## 📘 Use Cases
- Deploying across AZs for resilience
- Using edge locations for low-latency content delivery

## ⚠️ Common Pitfalls
- Assuming all services are available in all regions
- Confusing regional vs. global services

## 🔁 Linked Notes
- [[IAM]]

## 🧪 Practice Question
> Why is it important to architect for multiple AZs in the same region?
EOF

# Topic Note Template
cat <<EOF > "$VAULT_DIR/Templates/Topic-Note-Template.md"
---
title: {{TOPIC NAME}}
tags: [aws, service, architecture]
aliases: []
---

# {{TOPIC NAME}}

## 📌 Summary
Brief overview of the service or concept.

## 🛠️ Core Features
- Bullet points of key features
- Limits or constraints
- Pricing model

## 🔗 Integrations
- Works with: [[IAM]], [[VPC]], [[CloudWatch]]

## 📘 Use Cases
- Real-world scenarios

## ⚠️ Common Pitfalls
- Misconfigurations or assumptions

## 🧪 Practice Question
> Add a representative sample question here

## 💭 Possible Implementation Notes
- Notes about how AWS might implement this behind the scenes (e.g., global DNS strategies, S3 internals, load balancer behavior)

## 🔁 Linked Notes
- [[Related Service]], [[Comparison Note]]
EOF

# README.md
cat <<EOF > "$VAULT_DIR/README.md"
---
title: AWS Solutions Architect Vault
tags: [aws, obsidian, certification, learning, cloud]
created: $(date +%F)
updated: $(date +%F)
---

# AWS Solutions Architect Vault

This is a personal knowledge vault designed to support my study and certification as an **AWS Certified Solutions Architect**, using [Obsidian](https://obsidian.md/) for structured, interlinked note-taking.

It is built to complement the [AWS SkillBuilder](https://skillbuilder.aws) coursework, real-world architecture patterns, and exam preparation strategies. Notes are organized by AWS domains and services, with templates, integration links, and embedded practice questions.

> Use this vault as both a study companion and a reusable reference for cloud architecture and AWS services.

## 📘 Note Format

Notes follow a consistent template that includes:
- Summary
- Core Features
- Integrations
- Use Cases
- Common Pitfalls
- Sample Questions
- **Implementation Notes** (to speculate or learn how AWS likely implements services internally)

## ✅ Version Control

This vault is Git version-controlled so I can:
- Track study progress
- Back up and sync across machines
- Branch into deep dives on specialty topics

## 🚀 Getting Started

1. Clone this repo
2. Open it in Obsidian
3. Use the template in \`Templates/Topic-Note-Template.md\` for every AWS service you learn

## 🌱 Author

Created by [mmicire](https://github.com/mmicire)
EOF

# .gitignore
cat <<EOF > "$VAULT_DIR/.gitignore"
# Obsidian workspace and plugin cache
.obsidian/workspace
.obsidian/workspace.json
.obsidian/plugins/*/data.json
.obsidian/plugins/*/cache.json
.obsidian/snippets/

# macOS
.DS_Store

# Linux/Windows cruft
Thumbs.db
ehthumbs.db
Desktop.ini

# VS Code / JetBrains / Editor settings
.vscode/
.idea/
*.swp

# Backup files
*.bak
*.tmp
*~
EOF

# Initialize Git
cd "$VAULT_DIR"
git init
git add .
git commit -m "Initial commit: Vault structure, README, template, and .gitignore"
cd ..

echo "✅ AWS Obsidian vault initialized in ./$VAULT_DIR with .gitignore, README, and Git tracking."

