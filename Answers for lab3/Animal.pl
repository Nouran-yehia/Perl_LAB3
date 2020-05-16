#!/usr/bin/perl 

package Animal;

sub new
{
    my $class = shift;
    my $self = {
    _name => shift,
    _age  => shift,
    };
    bless $self, $class;
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

sub talk {
    print "I am an animal!"
}

$Obj = Animal->new ("Dog", 6);
$name = $Obj->getName();
$age = $Obj->getAge();
print $Obj->talk();
print"\n my name is $name";
print"\n my age is $age \n";


package Cat; 
my @ISA = (Animal); 

sub talk 
{ 
   print "I am a Cat \n";
} 

print"from inherited class >>>";
print Cat->talk();
