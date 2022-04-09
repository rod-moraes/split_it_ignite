import '../../../core/services/google_sign_in/google_sign_in_model.dart';
import '../../../core/services/google_sign_in/google_sign_in_service.dart';
import '../../../i18n/i18n_const.dart';

abstract class IApiLoginDatasource {
  Future<GoogleSignInModel> googleSignIn();
  Future<void> googleSignOut();
  void dispose();
}

class ApiLoginDatasource implements IApiLoginDatasource {
  // LOGAR COM GOOGLE - USA FUNÇÕES PARA SE CONECTAR COM O GOOGLE SIGN IN
  final GoogleSignInService _googleSignIn = GoogleSignInService(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  @override
  Future<GoogleSignInModel> googleSignIn() async {
    try {
      GoogleSignInModel? user = await _googleSignIn.signIn();
      if (user != null) {
        return user;
      } else {
        throw I18nConst.loginNull;
      }
    } catch (error) {
      throw I18nConst.errorLogin;
    }
  }

  @override
  Future<void> googleSignOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      throw I18nConst.errorLogout;
    }
  }

  @override
  void dispose() {}
}
