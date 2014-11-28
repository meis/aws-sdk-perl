package Paws::CloudFront::DistributionConfig {
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases', required => 1);
  has CacheBehaviors => (is => 'ro', isa => 'Paws::CloudFront::CacheBehaviors', required => 1);
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Paws::CloudFront::CustomErrorResponses');
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::CloudFront::DefaultCacheBehavior', required => 1);
  has DefaultRootObject => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Logging => (is => 'ro', isa => 'Paws::CloudFront::LoggingConfig', required => 1);
  has Origins => (is => 'ro', isa => 'Paws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Str', required => 1);
  has Restrictions => (is => 'ro', isa => 'Paws::CloudFront::Restrictions');
  has ViewerCertificate => (is => 'ro', isa => 'Paws::CloudFront::ViewerCertificate');
}
1;
