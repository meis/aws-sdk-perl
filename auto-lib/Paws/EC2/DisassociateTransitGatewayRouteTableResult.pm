
package Paws::EC2::DisassociateTransitGatewayRouteTableResult;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::TransitGatewayAssociation', request_name => 'association', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateTransitGatewayRouteTableResult

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::TransitGatewayAssociation>

Information about the association.


=head2 _request_id => Str


=cut

