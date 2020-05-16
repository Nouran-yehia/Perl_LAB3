#!/usr/bin/perl 

package Animal;

sub new
{
    $self = {
    _name => "Wild",
    _age  => "3",
    };
    bless $self;
    return $self;
}    
sub getName {
    my( $self ) = @_;
    return $self->{_name};
}

sub getAge {
    my( $self ) = @_;
    return $self->{_age};
}

$Obj = Animal->new ();
$name = $Obj->getName();
$age = $Obj->getAge();
print"\n my name is $name";
print"\n my age is $age \n";