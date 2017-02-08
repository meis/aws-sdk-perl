package Paws::EC2::CancelSpotFleetRequestsError;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest'], required => 1);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotFleetRequestsError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CancelSpotFleetRequestsError object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CancelSpotFleetRequestsError object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

  The error code.


=head2 B<REQUIRED> Message => Str

  The description for the error code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
