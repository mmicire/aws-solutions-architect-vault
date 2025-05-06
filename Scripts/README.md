# get-aws-links.sh

A lightweight, POSIX-compatible CLI tool to quickly fetch **official AWS documentation, pricing, and FAQ links** for common AWS services.

Perfect for use while studying for AWS certifications or documenting in tools like Obsidian.  
Supports Markdown export and clipboard integration on macOS.

---

## 🚀 Usage

```bash
./get-aws-links.sh <SERVICE_NAME> [--md] [--copy]
```

### Arguments:
- `<SERVICE_NAME>`: The name of the AWS service (e.g., `s3`, `ec2`, `lambda`)
- `--md`: Output the links in Markdown format
- `--copy`: Copy the Markdown output directly to your clipboard (macOS only)

---

## 📘 Examples

### Output to terminal (default):
```bash
./get-aws-links.sh s3
```

**Output:**
```
📚 AWS Resources for S3
Docs:    https://docs.aws.amazon.com/s3/
Pricing: https://aws.amazon.com/s3/pricing/
FAQ:     https://aws.amazon.com/s3/faqs/
```

---

### Output as Markdown:
```bash
./get-aws-links.sh ec2 --md
```

**Output:**
```markdown
## 📚 Resources
- [Official AWS Docs](https://docs.aws.amazon.com/ec2/)
- [Pricing Page](https://aws.amazon.com/ec2/pricing/)
- [FAQ](https://aws.amazon.com/ec2/faqs/)
```

---

### Copy Markdown directly to clipboard:
```bash
./get-aws-links.sh lambda --copy
```

**Output:**
```
✅ Markdown copied to clipboard!
```

---

## ✅ Supported Services

This script supports the following AWS services:

- `s3`
- `ec2`
- `iam`
- `lambda`
- `cloudfront`
- `dynamodb`
- `rds`
- `cloudformation`
- `cloudwatch`
- `vpc`

More services can easily be added by extending the `case` block in the script.

---

## 🧩 Compatibility

- ✔️ macOS (native Bash 3.2 or sh)
- ✔️ Linux (any POSIX shell)
- ✔️ No dependencies except `pbcopy` (macOS clipboard tool)

---

## ✍️ Author

Created by [mmicire](https://github.com/mmicire) as a note-taking companion for AWS Solutions Architect studies and Obsidian vaults.

