/*
NAMED AND OPTIONAL PARAMETERS
Create a function greetUser that takes a required name, an optional age, and a named parameter greeting. If no age is provided, print "Age not specified".
*/
void main() {
  greetUser('Leonardo', greeting: 'Good Morning');
  greetUser('Bowo', greeting: 'Hello', age: 20);
}

void greetUser(String name, {required String greeting, int? age}) {
  print('$greeting $name!');
  if (age != null) {
    print('Your age is $age');
  } else {
    print('Age not specified');
  }
}

//using arrow function
// void greetUser(String name, {String greeting = "Hello", int? age}) => 
//   print('$greeting, $name!\nAge: ${age ?? "Not specified"}');
