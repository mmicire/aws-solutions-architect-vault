#!/bin/bash

# Usage: ./get-aws-links.sh <SERVICE> [--md]

SERVICE_INPUT="$1"
FORMAT_MD="$2"

if [ -z "$SERVICE_INPUT" ]; then
  echo "Usage: $0 <AWS_SERVICE_NAME> [--md]"
  exit 1
fi

# Normalize input
SERVICE="$(echo "$SERVICE_INPUT" | tr '[:lower:]' '[:upper:]')"

# Map of service to base paths
declare -A DOCS=(
  [S3]="https://docs.aws.amazon.com/s3/"
  [EC2]="https://docs.aws.amazon.com/ec2/"
  [IAM]="https://docs.aws.amazon.com/IAM/"
  [LAMBDA]="https://docs.aws.amazon.com/lambda/"
  [CLOUDFRONT]="https://docs.aws.amazon.com/AmazonCloudFront/"
  [DYNAMODB]="https://docs.aws.amazon.com/amazondynamodb/"
  [RDS]="https://docs.aws.amazon.com/AmazonRDS/"
  [CLOUDFORMATION]="https://docs.aws.amazon.com/AWSCloudFormation/"
  [CLOUDWATCH]="https://docs.aws.amazon.com/cloudwatch/"
  [VPC]="https://docs.aws.amazon.com/vpc/"
)

declare -A PRICING=(
  [S3]="https://aws.amazon.com/s3/pricing/"
  [EC2]="https://aws.amazon.com/ec2/pricing/"
  [IAM]="https://aws.amazon.com/iam/pricing/"
  [LAMBDA]="https://aws.amazon.com/lambda/pricing/"
  [CLOUDFRONT]="https://aws.amazon.com/cloudfront/pricing/"
  [DYNAMODB]="https://aws.amazon.com/dynamodb/pricing/"
  [RDS]="https://aws.amazon.com/rds/pricing/"
  [CLOUDFORMATION]="https://aws.amazon.com/cloudformation/pricing/"
  [CLOUDWATCH]="https://aws.amazon.com/cloudwatch/pricing/"
  [VPC]="https://aws.amazon.com/vpc/pricing/"
)

declare -A FAQ=(
  [S3]="https://aws.amazon.com/s3/faqs/"
  [EC2]="https://aws.amazon.com/ec2/faqs/"
  [IAM]="https://aws.amazon.com/iam/faqs/"
  [LAMBDA]="https://aws.amazon.com/lambda/faqs/"
  [CLOUDFRONT]="https://aws.amazon.com/cloudfront/faqs/"
  [DYNAMODB]="https://aws.amazon.com/dynamodb/faqs/"
  [RDS]="https://aws.amazon.com/rds/faqs/"
)

# Get URLs
DOC_URL="${DOCS[$SERVICE]}"
PRICE_URL="${PRICING[$SERVICE]}"
FAQ_URL="${FAQ[$SERVICE]}"

# Output logic
if [[ "$FORMAT_MD" == "--md" ]]; then
  echo "## 📚 Resources"
  [[ -n "$DOC_URL" ]] && echo "- [Official AWS Docs]($DOC_URL)"
  [[ -n "$PRICE_URL" ]] && echo "- [Pricing Page]($PRICE_URL)"
  [[ -n "$FAQ_URL" ]] && echo "- [FAQ]($FAQ_URL)"
else
  echo "📚 AWS Resources for $SERVICE"
  [[ -n "$DOC_URL" ]] && echo "Docs:    $DOC_URL"
  [[ -n "$PRICE_URL" ]] && echo "Pricing: $PRICE_URL"
  [[ -n "$FAQ_URL" ]] && echo "FAQ:     $FAQ_URL"
fi

