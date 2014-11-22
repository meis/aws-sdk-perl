aws-sdk-perl
============

Attempt to build a complete AWS SDK in Perl

This project is attempting to build an entire AWS SDK from the information
that is stored in other AWS SDKs. Other AWS SDKs have a "data-driven" approach,
meaning that the definitions for the method calls are stored in a data structure
describing input and output parameters.

The project is actually generating all of it's classes from botocore

Organization
============

build-lib: Contains classes that convert a datastructure into class definitions

auto-lib: Contains the auto-generated classes

lib: Contains roles and classes that the auto-generated classes use to call the API,
sign requests, handle responses, etc.

Generating API
============

Note: This step is not necessary if you want to try out the SDK. We commit in "auto-lib"
the classes generated by pulling other sdks and generating the classes from them. If you're
not developing the SDK, go directly to the "Trying it out" step :)

Execute command make pull-other-sdks This will do a git pull of some official AWS sdks
that are data-driven, and used to generate the SDK.

To generate the API for a given API call: ./gen_classes.pl botocore/botocore/data/aws/API.json.
This will generate file(s) in auto-lib.

To generate all files:

make gen-classes

Perl versions
============

The SDK is targeted at modern Perl versions (in support as per: http://perldoc.perl.org/perlpolicy.html#MAINTENANCE-AND-SUPPORT. 
Old versions may work, but no intention to support them is made. You can always install a modern version of perl with perlbrew or
plenv in a breeze.

Dependencies
============

Dependencies are versioned in a cpanfile. If you have carton, just execute 'carton' in the sdk directory, and all dependencies
will be pulled in automatically into a local library path. After that use 'carton exec ...' to execute your scripts.

Trying it out
============

Each class for each API can be constructed in the following way:

Create a Perl script (myscript.pl)

```
#!/usr/bin/env perl

use Paws;
use Data::Printer;

my $iam = Paws->service('IAM')->new(
  region => 'eu-west-1',
);

my $summary = $iam->GetAccountSummary;
p $summary->SummaryMap;
```

ACCESS_KEY and SECRET_KEY are transmitted via ENVIRONMENT variables for the moment.
This behaviour will be changed. You also have to tell Perl where to get find the API
classes (with -I option).

```
export AWS_ACCESS_KEY=....
export AWS_SECRET_KEY=....

perl -I lib -I auto-lib myscript.pl
```

Status
================

Don't consider the SDK as "stable" code. There is a lot of experimenting going on. That said,
I'm using it in production, so changes to the way you call APIs, although not guaranteed, are
not prone to change because they are autogenerated. Expect changes around the way you obtain
service classes, transmit credentials, etc. Look at the TODO for expected changes to come.

Supported AWS Services
================
|Service          |Support   |
|-----------------|----------|
|AutoScaling      |YES       |
|CloudFormation   |YES       |
|CloudFront       |DEVELOPING|
|CloudSearch      |YES       |
|CloudSearchDomain|NOT YET   |
|CloudTrail       |YES       |
|CloudWatch       |YES       |
|DataPipeline     |YES       |
|DirectConnect    |YES       |
|DynamoDB         |YES       |
|EC2              |YES       |
|ElastiCache      |YES       |
|ElasticBeanstalk |YES       |
|ElasticTranscoder|NOT YET   |
|ELB              |YES       |
|EMR              |YES       |
|IAM              |YES       |
|ImportExport     |YES       |
|Kinesis          |YES       |
|OpsWorks         |YES       |
|RDS              |YES       |
|RedShift         |YES       |
|Route53          |DEVELOPING|
|S3               |DEVELOPING|
|SDB              |YES       |
|SES              |YES       |
|SimpleWorkflow   |YES       |
|SNS              |YES       |
|SQS              |YES       |
|StorageGateway   |YES       |
|STS              |YES       |
|Support          |YES       |

Thanks
================
Luis Alberto Gimenez (@agimenez) for 
 - The git-fu cleaning up the "pull other sdks" code
 - Credential Providers code

Srinvas (@kidambisrinivas) for testing, bug reporting and fixing

