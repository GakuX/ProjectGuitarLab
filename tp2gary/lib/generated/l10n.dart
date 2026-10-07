// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Guitar Practice`
  String get appTitle {
    return Intl.message(
      'Guitar Practice',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeTitle {
    return Intl.message('Home', name: 'homeTitle', desc: '', args: []);
  }

  /// `Sign in`
  String get connection {
    return Intl.message('Sign in', name: 'connection', desc: '', args: []);
  }

  /// `Sign up`
  String get signUp {
    return Intl.message('Sign up', name: 'signUp', desc: '', args: []);
  }

  /// `Welcome to GuitarLab!`
  String get welcomeToGuitarLab {
    return Intl.message(
      'Welcome to GuitarLab!',
      name: 'welcomeToGuitarLab',
      desc: '',
      args: [],
    );
  }

  /// `Sign in or sign up`
  String get signInOrSignUp {
    return Intl.message(
      'Sign in or sign up',
      name: 'signInOrSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirmYourPassword {
    return Intl.message(
      'Confirm your password',
      name: 'confirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message('Connect', name: 'connect', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message('Sign in', name: 'signIn', desc: '', args: []);
  }

  /// `today's session`
  String get dailySession {
    return Intl.message(
      'today\'s session',
      name: 'dailySession',
      desc: '',
      args: [],
    );
  }

  /// `Daily guitar`
  String get dailyGuitar {
    return Intl.message(
      'Daily guitar',
      name: 'dailyGuitar',
      desc: '',
      args: [],
    );
  }

  /// `5 exercises`
  String get exercisesCount {
    return Intl.message(
      '5 exercises',
      name: 'exercisesCount',
      desc: '',
      args: [],
    );
  }

  /// `30 minutes`
  String get duration {
    return Intl.message('30 minutes', name: 'duration', desc: '', args: []);
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `Next reminder`
  String get nextReminder {
    return Intl.message(
      'Next reminder',
      name: 'nextReminder',
      desc: '',
      args: [],
    );
  }

  /// `Today at 6:00 PM`
  String get todayAt {
    return Intl.message(
      'Today at 6:00 PM',
      name: 'todayAt',
      desc: '',
      args: [],
    );
  }

  /// `This week`
  String get thisWeek {
    return Intl.message('This week', name: 'thisWeek', desc: '', args: []);
  }

  /// `3 sessions completed`
  String get sessionsCompleted {
    return Intl.message(
      '3 sessions completed',
      name: 'sessionsCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Hello, Gaku`
  String get helloGaku {
    return Intl.message('Hello, Gaku', name: 'helloGaku', desc: '', args: []);
  }

  /// `Daily Shredding`
  String get dailyShredding {
    return Intl.message(
      'Daily Shredding',
      name: 'dailyShredding',
      desc: '',
      args: [],
    );
  }

  /// `Daily Downpicking`
  String get dailyDownpicking {
    return Intl.message(
      'Daily Downpicking',
      name: 'dailyDownpicking',
      desc: '',
      args: [],
    );
  }

  /// `To do now...`
  String get toDoNow {
    return Intl.message('To do now...', name: 'toDoNow', desc: '', args: []);
  }

  /// `[Start]`
  String get startInBrackets {
    return Intl.message('[Start]', name: 'startInBrackets', desc: '', args: []);
  }

  /// `Routine name`
  String get routineName {
    return Intl.message(
      'Routine name',
      name: 'routineName',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Enter your description`
  String get enterYourDescription {
    return Intl.message(
      'Enter your description',
      name: 'enterYourDescription',
      desc: '',
      args: [],
    );
  }

  /// `Exercises`
  String get exercises {
    return Intl.message('Exercises', name: 'exercises', desc: '', args: []);
  }

  /// `Choose an exercise`
  String get chooseAnExercise {
    return Intl.message(
      'Choose an exercise',
      name: 'chooseAnExercise',
      desc: '',
      args: [],
    );
  }

  /// `Downpick`
  String get downpick {
    return Intl.message('Downpick', name: 'downpick', desc: '', args: []);
  }

  /// `Shred`
  String get shred {
    return Intl.message('Shred', name: 'shred', desc: '', args: []);
  }

  /// `Chords`
  String get chords {
    return Intl.message('Chords', name: 'chords', desc: '', args: []);
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Exercise name`
  String get exerciseName {
    return Intl.message(
      'Exercise name',
      name: 'exerciseName',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name`
  String get enterName {
    return Intl.message(
      'Enter the name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Choose a type`
  String get chooseAType {
    return Intl.message(
      'Choose a type',
      name: 'chooseAType',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get durationLabel {
    return Intl.message('Duration', name: 'durationLabel', desc: '', args: []);
  }

  /// `Enter your duration`
  String get enterYourDuration {
    return Intl.message(
      'Enter your duration',
      name: 'enterYourDuration',
      desc: '',
      args: [],
    );
  }

  /// `BPM`
  String get bpm {
    return Intl.message('BPM', name: 'bpm', desc: '', args: []);
  }

  /// `Enter your BPM`
  String get enterYourBpm {
    return Intl.message(
      'Enter your BPM',
      name: 'enterYourBpm',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Exercise 1`
  String get exercise1 {
    return Intl.message('Exercise 1', name: 'exercise1', desc: '', args: []);
  }

  /// `Exercise 2`
  String get exercise2 {
    return Intl.message('Exercise 2', name: 'exercise2', desc: '', args: []);
  }

  /// `Exercise 3`
  String get exercise3 {
    return Intl.message('Exercise 3', name: 'exercise3', desc: '', args: []);
  }

  /// `Standard`
  String get tuningStandard {
    return Intl.message('Standard', name: 'tuningStandard', desc: '', args: []);
  }

  /// `Drop D`
  String get tuningDropD {
    return Intl.message('Drop D', name: 'tuningDropD', desc: '', args: []);
  }

  /// `Open G`
  String get tuningOpenG {
    return Intl.message('Open G', name: 'tuningOpenG', desc: '', args: []);
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Sign up`
  String get register {
    return Intl.message('Sign up', name: 'register', desc: '', args: []);
  }

  /// `Add exercise`
  String get addExercise {
    return Intl.message(
      'Add exercise',
      name: 'addExercise',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message('Type', name: 'type', desc: '', args: []);
  }

  /// `Add routine`
  String get addRoutine {
    return Intl.message('Add routine', name: 'addRoutine', desc: '', args: []);
  }

  /// `Routine details`
  String get routineDetails {
    return Intl.message(
      'Routine details',
      name: 'routineDetails',
      desc: '',
      args: [],
    );
  }

  /// `Routine description`
  String get routineDescription {
    return Intl.message(
      'Routine description',
      name: 'routineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Exercise`
  String get exercise {
    return Intl.message('Exercise', name: 'exercise', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Pause`
  String get pause {
    return Intl.message('Pause', name: 'pause', desc: '', args: []);
  }

  /// `Finish`
  String get finish {
    return Intl.message('Finish', name: 'finish', desc: '', args: []);
  }

  /// `Timer`
  String get timer {
    return Intl.message('Timer', name: 'timer', desc: '', args: []);
  }

  /// `Exercise 1/5`
  String get exerciseCount {
    return Intl.message(
      'Exercise 1/5',
      name: 'exerciseCount',
      desc: '',
      args: [],
    );
  }

  /// `Warm-up`
  String get warmUp {
    return Intl.message('Warm-up', name: 'warmUp', desc: '', args: []);
  }

  /// `min`
  String get min {
    return Intl.message('min', name: 'min', desc: '', args: []);
  }

  /// `Idea`
  String get idea {
    return Intl.message('Idea', name: 'idea', desc: '', args: []);
  }

  /// `Genre`
  String get genre {
    return Intl.message('Genre', name: 'genre', desc: '', args: []);
  }

  /// `Level`
  String get level {
    return Intl.message('Level', name: 'level', desc: '', args: []);
  }

  /// `Guitar`
  String get guitar {
    return Intl.message('Guitar', name: 'guitar', desc: '', args: []);
  }

  /// `Intermediate`
  String get intermediate {
    return Intl.message(
      'Intermediate',
      name: 'intermediate',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
