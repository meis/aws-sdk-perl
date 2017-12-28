
package Paws::MediaStore::DescribeContainer;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContainer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::DescribeContainerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::DescribeContainer - Arguments for method DescribeContainer on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContainer on the 
AWS Elemental MediaStore service. Use the attributes of this class
as arguments to method DescribeContainer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContainer.

As an example:

  $service_obj->DescribeContainer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ContainerName => Str

The name of the container to query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContainer in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
