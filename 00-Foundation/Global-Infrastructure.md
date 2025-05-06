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
