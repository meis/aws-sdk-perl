
package Paws::SQS::ReceiveMessage {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has MessageAttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::ReceiveMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ReceiveMessageResult');
}
1;