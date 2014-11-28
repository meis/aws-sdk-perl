
package Paws::CognitoSync::GetIdentityPoolConfigurationResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has PushSync => (is => 'ro', isa => 'Paws::CognitoSync::PushSync');

}
1;