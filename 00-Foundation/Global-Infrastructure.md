## 📌 Summary
AWS is built on a global network of Regions, Availability Zones (AZs), and Edge Locations.

## 🛠️ Core Features
- Regions are isolated locations.
- Without explicit customer consent and authorisation, data is not replicated from one Region to another.
- When you decide which AWS Region to host your applications and workloads, consider four main aspects: 
	- latency 
	- price
	- service availability 
	- compliance
- Regions are independent from one another.
- AZs provide high availability within regions.
- Availability Zones also have code names. Because they are located inside Regions, they can be addressed by appending a letter to the end of the Region code name. Here are examples of Availability Zone codes:
	- **us-east-1a** is an Availability Zone in us-east-1 (N. Virginia Region).
	- **sa-east-1b** is an Availability Zone in sa-east-1 (São Paulo Region).
- Therefore, if you see that a resource exists in us-east-1c, you can infer that the resource is located in Availability Zone c of the us-east-1 Region.
- When you operate a Region-scoped service, you only need to select the Region you want to use.
- Some services ask you to specify an Availability Zone. With these services, you are often responsible for increasing the data durability and high availability of these resources.
- A well-known best practice for cloud architecture is to use Region-scoped, managed services. These services come with availability and resiliency built in. When that is impossible, ensure your workload is replicated across multiple Availability Zones. At a minimum, you should use two Availability Zones. If an Availability Zone fails, your application will have infrastructure up and running in a second Availability Zone to take over the traffic.
- Edge locations used by CloudFront for caching

![Within a Region, an Availability Zone consists of one or more data centres.](https://explore.skillbuilder.aws/files/a/w/aws_prod1_docebosaas_com/1746525600/JkBOm9A1uTrPDI-O7yPf3A/tincan/9b7c5b541f30d708ac93c376cbcd26df5bc0c050/assets/AZs.png)
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

## 📚 Resources

For more information, see the following resources:

- AWS website: [Global Infrastructure(opens in a new tab)](https://aws.amazon.com/about-aws/global-infrastructure/)
- [(opens in a new tab)](https://infrastructure.aws/)
- AWS whitepaper: [AWS Global Infrastructure Documentation(opens in a new tab)](https://docs.aws.amazon.com/whitepapers/latest/aws-overview/global-infrastructure.html)
- AWS website: [AWS Regions and Availability Zones(opens in a new tab)](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/)
- AWS reference guide: [AWS Service Endpoints(opens in a new tab)](https://docs.aws.amazon.com/general/latest/gr/rande.html)
- AWS website: [AWS Regional Services(opens in a new tab)](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/)
- AWS developer guide: [Amazon CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)