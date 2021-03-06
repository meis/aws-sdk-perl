
package Paws::IoT::ListCertificatesByCA;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'isAscendingOrder');
  has CaCertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caCertificateId', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCertificatesByCA');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates-by-ca/{caCertificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListCertificatesByCAResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificatesByCA - Arguments for method ListCertificatesByCA on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCertificatesByCA on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListCertificatesByCA.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCertificatesByCA.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListCertificatesByCAResponse = $iot->ListCertificatesByCA(
      CaCertificateId => 'MyCertificateId',
      AscendingOrder  => 1,                   # OPTIONAL
      Marker          => 'MyMarker',          # OPTIONAL
      PageSize        => 1,                   # OPTIONAL
    );

    # Results:
    my $Certificates = $ListCertificatesByCAResponse->Certificates;
    my $NextMarker   = $ListCertificatesByCAResponse->NextMarker;

    # Returns a L<Paws::IoT::ListCertificatesByCAResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListCertificatesByCA>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Specifies the order for results. If True, the results are returned in
ascending order, based on the creation date.



=head2 B<REQUIRED> CaCertificateId => Str

The ID of the CA certificate. This operation will list all registered
device certificate that were signed by this CA certificate.



=head2 Marker => Str

The marker for the next set of results.



=head2 PageSize => Int

The result page size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCertificatesByCA in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

