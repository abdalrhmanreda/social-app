import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/ui/features/auth/presentation/controller/auth_cubit.dart';

import 'config/routes/router.dart';
import 'config/routes/routes_path.dart';
import 'config/themes/themes.dart';
import 'core/cache/cache_helper.dart';
import 'core/cubit/app_cubit.dart';
import 'core/cubit/observer/blocObserver.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const WaveApp());
}

class WaveApp extends StatelessWidget {
  const WaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return SafeArea(
            child: MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => AuthCubit()),
                BlocProvider(create: (context) => AppCubit()),
              ],
              child: MaterialApp(
                locale: const Locale('en', 'US'),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                debugShowCheckedModeBanner: false,
                initialRoute: RoutePath.layout,
                onGenerateRoute: generateRoute,
                theme: Style.lightTheme,
                darkTheme: Style.darkTheme,
                themeMode: ThemeMode.light,
              ),
            ),
          );
        });
  }
}
