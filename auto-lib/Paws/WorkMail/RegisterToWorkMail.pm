
package Paws::WorkMail::RegisterToWorkMail;
  use Moose;
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterToWorkMail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::RegisterToWorkMailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::RegisterToWorkMail - Arguments for method RegisterToWorkMail on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterToWorkMail on the 
Amazon WorkMail service. Use the attributes of this class
as arguments to method RegisterToWorkMail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterToWorkMail.

As an example:

  $service_obj->RegisterToWorkMail(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Email => Str

The email for the entity to be updated.



=head2 B<REQUIRED> EntityId => Str

The identifier for the entity to be updated.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the Amazon WorkMail
entity exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterToWorkMail in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
