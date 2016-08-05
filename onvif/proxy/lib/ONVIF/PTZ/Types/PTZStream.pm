package ONVIF::PTZ::Types::PTZStream;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %PTZStatus_of :ATTR(:get<PTZStatus>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        PTZStatus
        Extension

    ) ],
    {
        'PTZStatus' => \%PTZStatus_of,
        'Extension' => \%Extension_of,
    },
    {
        'PTZStatus' => 'ONVIF::PTZ::Types::PTZStatus',
        'Extension' => 'ONVIF::PTZ::Types::PTZStreamExtension',
    },
    {

        'PTZStatus' => 'PTZStatus',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::PTZStream

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZStream from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PTZStatus


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::PTZStream
   # One of the following elements.
   # No occurrence checks yet, so be sure to pass just one...
   PTZStatus =>  { # ONVIF::PTZ::Types::PTZStatus
     Position =>  { # ONVIF::PTZ::Types::PTZVector
       PanTilt => ,
       Zoom => ,
     },
     MoveStatus =>  { # ONVIF::PTZ::Types::PTZMoveStatus
       PanTilt => $some_value, # MoveStatus
       Zoom => $some_value, # MoveStatus
     },
     Error =>  $some_value, # string
     UtcTime =>  $some_value, # dateTime
   },
   Extension =>  { # ONVIF::PTZ::Types::PTZStreamExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

