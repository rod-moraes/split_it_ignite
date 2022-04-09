import 'package:google_sign_in/google_sign_in.dart';

import 'google_sign_in_model.dart';

class GoogleSignInService {
  final SignInOption signInOption;
  final List<String> scopes;
  final String? hostedDomain;
  final String? clientId;

  GoogleSignInService({
    this.signInOption = SignInOption.standard,
    this.scopes = const <String>[],
    this.hostedDomain,
    this.clientId,
  });

  GoogleSignIn _googleSignIn() => GoogleSignIn(
        signInOption: signInOption,
        scopes: scopes,
        hostedDomain: hostedDomain,
        clientId: clientId,
      );

  Future<GoogleSignInModel?> signIn() async {
    GoogleSignInAccount? signInAccount = await _googleSignIn().signIn();
    return signInAccount == null
        ? null
        : GoogleSignInModel.fromGoogleSignIn(signInAccount);
  }

  Future<GoogleSignInModel?> signOut() async {
    GoogleSignInAccount? signOutAccount = await _googleSignIn().signOut();
    return signOutAccount == null
        ? null
        : GoogleSignInModel.fromGoogleSignIn(signOutAccount);
  }
}
