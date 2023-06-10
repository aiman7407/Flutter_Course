class Person {
  String name;
  String phone;
  String image;
  String email;

  Person(
      {required this.name,
        required this.phone,
        required this.image,
        required this.email});
}

List<Person> myContacts = [
  Person(
      name: 'Ahmed',
      phone: '012345678',
      image:
      'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg',
      email: 'ahmed@gmail.com'),
  Person(
      name: 'Mohamed',
      phone: '0987654321',
      image:
      'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg',
      email: 'mohamed@gmail.com'),


];