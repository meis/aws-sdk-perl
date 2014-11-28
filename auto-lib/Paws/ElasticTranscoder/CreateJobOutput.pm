package Paws::ElasticTranscoder::CreateJobOutput {
  use Moose;
  has AlbumArt => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobAlbumArt');
  has Captions => (is => 'ro', isa => 'Paws::ElasticTranscoder::Captions');
  has Composition => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Clip]');
  has Key => (is => 'ro', isa => 'Str');
  has PresetId => (is => 'ro', isa => 'Str');
  has Rotate => (is => 'ro', isa => 'Str');
  has SegmentDuration => (is => 'ro', isa => 'Str');
  has ThumbnailPattern => (is => 'ro', isa => 'Str');
  has Watermarks => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::JobWatermark]');
}
1;
