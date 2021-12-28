import 'package:beauty_link/models/app_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool get isSignedIn => _auth.currentUser != null;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  //final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static Uri _url = Uri(
    host:
        "GET https://www.googleapis.com/drive/v3/files/1GK5XYYgh_VC4kHY8jjv02mCQWNf_m58s?key=AIzaSyCfG_FIZhqpmnr51MJUIjacTQDO1zMiAd0",
  );
  //final UserService _userService = UserService.instance;

  static final AuthService _singleton = AuthService._internal();
  factory AuthService() => _singleton;

  AuthService._internal() {
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Stream<User?> authStateChange() => _auth.authStateChanges();

  AppUser? get user => _userFromFirebaseUser(_auth.currentUser);

  // create user obj based on firebase user
  AppUser? _userFromFirebaseUser(User? user) {
    if (user == null) return null;
    return AppUser(uidFB: user.uid, name: user.displayName, email: user.email);
  }

  Future<String> getToken() async {
    String result = "";
    if (_auth.currentUser == null) return result;
    await _auth.currentUser?.getIdToken().then((value) => result = value);
    return result;
  }

  Future<AppUser?> reLoginWithGoogle() async {
    await signOut();
    var user = await loginWithGoogle();
    return user;
  }

  Future<AppUser?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final User? user = (await _auth.signInWithCredential(credential)).user;
      //_firebaseMessaging.subscribeToTopic('all');
      var token = await _firebaseMessaging.getToken();
      print(token); // Print the Token in Console
      AppUser? _appUser = _userFromFirebaseUser(user);
      _appUser?.token = token;
      //_userService.post(currentUser);
      /*if (currentUser != null) // Add information to database of current user in firebase
          _firestore
              .collection("users")
              .doc(currentUser.uidFB)
              .set(currentUser.toJsonForFC());*/
      return _appUser;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign in anon
  Future signInAnon() async {
    try {
      var result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;

      /*AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;*/
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      await user?.sendEmailVerification();
      if (!(user?.emailVerified ?? false)) return null;
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future getID() async {
    var user = await _auth.currentUser;
    var t = await user?.getIdToken();
    final response = await http.get(_url, headers: {
      //'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $t'
    });
    return null;
  }
}
