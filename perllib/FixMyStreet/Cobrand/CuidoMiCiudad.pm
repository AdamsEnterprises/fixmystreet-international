package FixMyStreet::Cobrand::CuidoMiCiudad;
use base 'FixMyStreet::Cobrand::Default';

use strict;
use warnings;

sub country {
    return 'DO';
}

sub languages { [ 'es-do,Spanish,es_DO' ] }
sub language_override { 'es-do' }

sub admin_allow_user {
    my ( $self, $user ) = @_;
    return 1 if $user->is_superuser || $user->from_body;
}

1;
