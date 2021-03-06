
package Paws::CognitoIdp::DescribeUserImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserImportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DescribeUserImportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeUserImportJob - Arguments for method DescribeUserImportJob on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserImportJob on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DescribeUserImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserImportJob.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DescribeUserImportJobResponse = $cognito -idp->DescribeUserImportJob(
      JobId      => 'MyUserImportJobIdType',
      UserPoolId => 'MyUserPoolIdType',

    );

    # Results:
    my $UserImportJob = $DescribeUserImportJobResponse->UserImportJob;

    # Returns a L<Paws::CognitoIdp::DescribeUserImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/DescribeUserImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID for the user import job.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool that the users are being imported
into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserImportJob in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

