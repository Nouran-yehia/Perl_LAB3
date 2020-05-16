#!/usr/bin/perl 
package Animal;
 
use Moose;
 
has 'name' => ( is => 'rw' );
has 'age' => ( is => 'rw' );

sub getName {
    my $self  = shift;
    return $self->{'name'};
}

sub getAge {
    my $self  = shift;
    return $self->{'age'};
}

sub talk {
    print "I am an animal! \n"
}

my $Obj = Animal->new(
  name => 'Dog',
  age   => 6,
);
print $Obj->talk();

my $meta = Animal->meta();
for my $attribute ( $meta->get_all_attributes ) {
    print"Print attributes: ";
print $attribute->name(), "\n";
}
for my $method ( $meta->get_all_methods ) 
    {
    print"Print Methods: ";

    print $method->name, "\n";
    }