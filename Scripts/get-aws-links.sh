#!/bin/sh

SERVICE_INPUT="$1"
FORMAT_FLAG="$2"
COPY_FLAG="$3"

if [ -z "$SERVICE_INPUT" ]; then
  echo "Usage: $0 <AWS_SERVICE_NAME> [--md] [--copy]"
  exit 1
fi

SERVICE="$(echo "$SERVICE_INPUT" | tr '[:lower:]' '[:upper:]')"

# Initialize URLs to empty to prevent old values from persisting
DOC_URL=""
PRICING_URL=""
FAQ_URL=""

case "$SERVICE" in
  S3)
    DOC_URL="https://docs.aws.amazon.com/s3/"
    PRICING_URL="https://aws.amazon.com/s3/pricing/"
    FAQ_URL="https://aws.amazon.com/s3/faqs/"
    ;;
  EC2)
    DOC_URL="https://docs.aws.amazon.com/ec2/"
    PRICING_URL="https://aws.amazon.com/ec2/pricing/"
    FAQ_URL="https://aws.amazon.com/ec2/faqs/"
    ;;
  IAM)
    DOC_URL="https://docs.aws.amazon.com/IAM/"
    PRICING_URL="https://aws.amazon.com/iam/pricing/"
    FAQ_URL="https://aws.amazon.com/iam/faqs/"
    ;;
  LAMBDA)
    DOC_URL="https://docs.aws.amazon.com/lambda/"
    PRICING_URL="https://aws.amazon.com/lambda/pricing/"
    FAQ_URL="https://aws.amazon.com/lambda/faqs/"
    ;;
  CLOUDFRONT)
    DOC_URL="https://docs.aws.amazon.com/AmazonCloudFront/"
    PRICING_URL="https://aws.amazon.com/cloudfront/pricing/"
    FAQ_URL="https://aws.amazon.com/cloudfront/faqs/"
    ;;
  DYNAMODB)
    DOC_URL="https://docs.aws.amazon.com/amazondynamodb/"
    PRICING_URL="https://aws.amazon.com/dynamodb/pricing/"
    FAQ_URL="https://aws.amazon.com/dynamodb/faqs/"
    ;;
  RDS)
    DOC_URL="https://docs.aws.amazon.com/AmazonRDS/"
    PRICING_URL="https://aws.amazon.com/rds/pricing/"
    FAQ_URL="https://aws.amazon.com/rds/faqs/"
    ;;
  CLOUDFORMATION)
    DOC_URL="https://docs.aws.amazon.com/AWSCloudFormation/"
    PRICING_URL="https://aws.amazon.com/cloudformation/pricing/"
    ;;
  CLOUDWATCH)
    DOC_URL="https://docs.aws.amazon.com/cloudwatch/"
    PRICING_URL="https://aws.amazon.com/cloudwatch/pricing/"
    ;;
  VPC)
    DOC_URL="https://docs.aws.amazon.com/vpc/"
    PRICING_URL="https://aws.amazon.com/vpc/pricing/"
    ;;
  *)
    echo "❌ Unsupported service: $SERVICE"
    exit 1
    ;;
esac

# Build output string
OUTPUT=""
if [ "$FORMAT_FLAG" = "--md" ] || [ "$COPY_FLAG" = "--md" ] || [ "$FORMAT_FLAG" = "--copy" ] || [ "$COPY_FLAG" = "--copy" ]; then
  OUTPUT="## 📚 Resources\n"
  [ -n "$DOC_URL" ] && OUTPUT="${OUTPUT}- [Official AWS Docs](${DOC_URL})\n"
  [ -n "$PRICING_URL" ] && OUTPUT="${OUTPUT}- [Pricing Page](${PRICING_URL})\n"
  [ -n "$FAQ_URL" ] && OUTPUT="${OUTPUT}- [FAQ](${FAQ_URL})\n"
else
  OUTPUT="📚 AWS Resources for $SERVICE\n"
  [ -n "$DOC_URL" ] && OUTPUT="${OUTPUT}Docs:    ${DOC_URL}\n"
  [ -n "$PRICING_URL" ] && OUTPUT="${OUTPUT}Pricing: ${PRICING_URL}\n"
  [ -n "$FAQ_URL" ] && OUTPUT="${OUTPUT}FAQ:     ${FAQ_URL}\n"
fi

# Output or copy to clipboard
if [ "$FORMAT_FLAG" = "--copy" ] || [ "$COPY_FLAG" = "--copy" ]; then
  printf "%b" "$OUTPUT" | pbcopy
  echo "✅ Markdown copied to clipboard!"
else
  printf "%b" "$OUTPUT"
fi

