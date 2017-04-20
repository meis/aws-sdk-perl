
package Paws::LexModels::GetBuiltinSlotTypes;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken' );
  has SignatureContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'signatureContains' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuiltinSlotTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/slottypes/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBuiltinSlotTypesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinSlotTypes - Arguments for method GetBuiltinSlotTypes on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuiltinSlotTypes on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method GetBuiltinSlotTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuiltinSlotTypes.

As an example:

  $service_obj->GetBuiltinSlotTypes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Locale => Str

A list of locales that the slot type supports.

Valid values are: C<"en-US">

=head2 MaxResults => Int

The maximum number of slot types to return in the response. The default
is 10.



=head2 NextToken => Str

A pagination token that fetches the next page of slot types. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of slot types, specify
the pagination token in the next request.



=head2 SignatureContains => Str

Substring to match in built-in slot type signatures. A slot type will
be returned if any part of its signature matches the substring. For
example, "xyz" matches both "xyzabc" and "abcxyz."




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuiltinSlotTypes in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

