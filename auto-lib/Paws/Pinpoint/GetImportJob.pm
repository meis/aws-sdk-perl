
package Paws::Pinpoint::GetImportJob;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'job-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/jobs/import/{job-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetImportJob - Arguments for method GetImportJob on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImportJob on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImportJob.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetImportJobResponse = $pinpoint->GetImportJob(
      ApplicationId => 'My__string',
      JobId         => 'My__string',

    );

    # Results:
    my $ImportJobResponse = $GetImportJobResponse->ImportJobResponse;

    # Returns a L<Paws::Pinpoint::GetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique ID of your Amazon Pinpoint application.



=head2 B<REQUIRED> JobId => Str

The unique ID of the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImportJob in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

