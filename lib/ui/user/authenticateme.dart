import 'package:amplify_flutter/amplify.dart';

public class AuthMe  extends Application {
  private static final String TAG = "AuthMe";

  @Override
  public void onCreate() {
    super.onCreate();

    try {
      Amplify.addPlugin(new AWSCognitoAuthPlugin());

      Amplify.configure(getApplicationContext());

      Log.i(TAG, "Initialized Amplify");
    } catch (AmplifyException error) {
    Log.e(TAG, "Could not initialize Amplify", error);
    }

  }
}