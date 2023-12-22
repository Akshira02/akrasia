import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDwyiBSYwCp_w_8nt7WJ0n0EG_zxcVu-ts",
            authDomain: "duplicate-of-therapyaks-inlaiq.firebaseapp.com",
            projectId: "duplicate-of-therapyaks-inlaiq",
            storageBucket: "duplicate-of-therapyaks-inlaiq.appspot.com",
            messagingSenderId: "1014332476497",
            appId: "1:1014332476497:web:30de7c6844720d830f3c70"));
  } else {
    await Firebase.initializeApp();
  }
}
