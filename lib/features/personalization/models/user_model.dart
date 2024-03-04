

//-----Model class representing user data
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trim_convict/utils/formatters/formatter.dart';

class UserModel {

  //---keep those value final which you dont want to update
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;


  //---Constructor for user update
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName $firstName';

  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split("");

  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split('');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', userName: '', email: '', phoneNumber: '', profilePicture: '');
  //  convert model to json structure for storing data in firebase
  Map<String , dynamic> toJson(){
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }


  //----Factory method to create a user model from a firebase document snapshot
  // factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //       id: document.id, 
  //       firstName: data['FirstName'] ?? '', 
  //       lastName: data['LastName'] ?? '', 
  //       userName: data['UserName'] ?? '', 
  //       email: data['Email'] ?? '', 
  //       phoneNumber: data['PhoneNumber'] ?? '', 
  //       profilePicture: data['ProfilePicture'] ?? ''
  //     );

  //   }
  // }
}