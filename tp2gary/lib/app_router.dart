import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/main.dart';
import 'package:tp2gary/pages/Comptes/connection.dart';
import 'package:tp2gary/pages/Comptes/inscription.dart';
import 'package:tp2gary/pages/bienvenue.dart';
import 'package:tp2gary/pages/excersises/createExcersise.dart';
import 'package:tp2gary/pages/excersises/timer.dart';
import 'package:tp2gary/pages/idees/create_idee.dart';
import 'package:tp2gary/pages/idees/idees.dart';
import 'package:tp2gary/pages/routines/createroutine.dart';
import 'package:tp2gary/pages/routines/detail_routine.dart';
import 'package:tp2gary/pages/routines/routine.dart';
import 'package:tp2gary/pages/idees/ideeDetail.dart';

final GoRouter router = GoRouter(
  initialLocation: FirebaseAuth.instance.currentUser != null
      ? '/accueil'
      : '/connection',
  routes: [
    GoRoute(path: '/', builder: (context, state) => bienvenueScreen()),

    GoRoute(
      path: '/accueil',
      builder: (context, state) => MyHomePage(title: "yo"),
    ),

    GoRoute(
      path: '/connection',
      builder: (context, state) => connectionScreen(),
    ),

    GoRoute(
      path: '/inscription',
      builder: (context, state) => inscriptionScreen(),
    ),
    GoRoute(path: '/routine', builder: (context, state) => routineScreen()),

    GoRoute(path: '/idees', builder: (context, state) => ideeScreen()),

    //idee detail
    GoRoute(
      path: '/ideeDetail/:id/:description',
      builder: (context, state) {
        final id = state.pathParameters["id"];
        final description = state.pathParameters["description"];
        return ideeDetailScreen(id: int.parse(id!), desc: description!);
      },
    ),

    // create routine
    GoRoute(
      path: '/createroutine',
      builder: (context, state) => Createroutine(),
    ),

    GoRoute(
      path: '/detailroutine',
      builder: (context, state) => detailRoutineScreen(),
    ),

    GoRoute(
      path: '/createexcersise',
      builder: (context, state) => createExcersise(),
    ),

    GoRoute(path: '/timer', builder: (context, state) => TimerScreen()),

    GoRoute(path: '/createidee', builder: (context, state) => CreateIdee()),
    // GoRoute(
    //   path: '/idees',
    //   builder: (context, state) => const routineScreen(),
    // ),

    // GoRoute(path: '/', builder: (context, state) => const inscriptionScreen()),

    // GoRoute(
    //   path: '/GakuDetail',
    //   builder: (context, state) {
    //     final data = state.extra as Map<String, dynamic>? ?? {};
    //     return GakuDetail(
    //       id: data['id'] as int? ?? 0,
    //       name: data['name'] as String? ?? 'Inconnu',
    //     );
    //   },
    // ),
  ],
);
