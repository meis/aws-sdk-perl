
package Paws::DeviceFarm::UpdateUploadResult;
  use Moose;
  has Upload => (is => 'ro', isa => 'Paws::DeviceFarm::Upload', traits => ['NameInRequest'], request_name => 'upload' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateUploadResult

=head1 ATTRIBUTES


=head2 Upload => L<Paws::DeviceFarm::Upload>

A test spec uploaded to Device Farm.


=head2 _request_id => Str


=cut

1;