
package Paws::Comprehend::StopDominantLanguageDetectionJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StopDominantLanguageDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the dominant language detection job to stop.


=head2 JobStatus => Str

Either C<STOP_REQUESTED> if the job is currently running, or C<STOPPED>
if the job was previously stopped with the
C<StopDominantLanguageDetectionJob> operation.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOP_REQUESTED">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;