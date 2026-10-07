import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/hooks/bottomnavigation.dart';
import 'package:tp2gary/models/ideeList.dart';
import 'package:tp2gary/generated/l10n.dart';
import 'package:tp2gary/hooks/mon-drawer.dart';

class ideeScreen extends StatefulWidget {
  const ideeScreen({super.key});

  @override
  State<ideeScreen> createState() => _IdeeScreenState();
}

class _IdeeScreenState extends State<ideeScreen> {
  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    // liste hardcodée de Classe IdeeList par IA
    final List<IdeeList> ideeList = [
      IdeeList(
        id: 1,
        description: "Riff rock avec power chords et palm mute",
        tuning: "Standard",
      ),
      IdeeList(
        id: 2,
        description: "Arpeges doux en fingerpicking",
        tuning: "Standard",
      ),
      IdeeList(
        id: 3,
        description: "Solo blues avec bends et vibrato",
        tuning: "Standard",
      ),
      IdeeList(
        id: 4,
        description: "Progression mineure dramatique",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 5,
        description: "Pattern rythmique funk avec accents",
        tuning: "Standard",
      ),
      IdeeList(
        id: 6,
        description: "Melodie en harmonies de tierces",
        tuning: "Standard",
      ),
      IdeeList(
        id: 7,
        description: "Riff metal agressif en triton",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 8,
        description: "Ambiance ambient avec notes tenues",
        tuning: "Open G",
      ),
      IdeeList(
        id: 9,
        description: "Theme pop lumineux et simple",
        tuning: "Standard",
      ),
      IdeeList(
        id: 10,
        description: "Arpeges rapides pour travail de precision",
        tuning: "Standard",
      ),
      IdeeList(
        id: 11,
        description: "Riff de blues shuffle",
        tuning: "Standard",
      ),
      IdeeList(
        id: 12,
        description: "Melodie neo-soul avec accords enrichis",
        tuning: "Standard",
      ),
      IdeeList(
        id: 13,
        description: "Alternance basse melodique et accords",
        tuning: "DADGAD",
      ),
      IdeeList(
        id: 14,
        description: "Motif en sweep picking",
        tuning: "Standard",
      ),
      IdeeList(
        id: 15,
        description: "Riff oriental avec gamme mineure harmonique",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 16,
        description: "Ballade acoustique emotionnelle",
        tuning: "Standard",
      ),
      IdeeList(
        id: 17,
        description: "Ligne melodique sur corde de si",
        tuning: "Standard",
      ),
      IdeeList(
        id: 18,
        description: "Rythme reggae avec contretemps",
        tuning: "Standard",
      ),
      IdeeList(
        id: 19,
        description: "Theme cinematic large et ouvert",
        tuning: "Open G",
      ),
      IdeeList(
        id: 20,
        description: "Exercise de legato sur une corde",
        tuning: "Standard",
      ),
      IdeeList(
        id: 21,
        description: "Riff punk rapide et energique",
        tuning: "Standard",
      ),
      IdeeList(
        id: 22,
        description: "Solo expressif avec slides longs",
        tuning: "Standard",
      ),
      IdeeList(
        id: 23,
        description: "Pattern de picking alterné",
        tuning: "Standard",
      ),
      IdeeList(
        id: 24,
        description: "Chords suspendus pour ambiance dream pop",
        tuning: "Open G",
      ),
      IdeeList(
        id: 25,
        description: "Riff heavy avec octave jumps",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 26,
        description: "Melodie triste en mode dorien",
        tuning: "Standard",
      ),
      IdeeList(
        id: 27,
        description: "Accompagnement bossa legere",
        tuning: "Standard",
      ),
      IdeeList(
        id: 28,
        description: "Phrase blues en position 5",
        tuning: "Standard",
      ),
      IdeeList(
        id: 29,
        description: "Arpeges avec cordes a vide",
        tuning: "DADGAD",
      ),
      IdeeList(
        id: 30,
        description: "Riff motive en staccato",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 31,
        description: "Theme folk avec accords ouverts",
        tuning: "Open G",
      ),
      IdeeList(
        id: 32,
        description: "Solo rapide sur pentatonique mineure",
        tuning: "Standard",
      ),
      IdeeList(
        id: 33,
        description: "Rythme disco-funk precis",
        tuning: "Standard",
      ),
      IdeeList(
        id: 34,
        description: "Melodie en harmoniques naturelles",
        tuning: "Standard",
      ),
      IdeeList(
        id: 35,
        description: "Progression jazz avec accords 7e",
        tuning: "Standard",
      ),
      IdeeList(
        id: 36,
        description: "Riff sombre avec chromatisme",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 37,
        description: "Motif repetitif hypnotique",
        tuning: "DADGAD",
      ),
      IdeeList(
        id: 38,
        description: "Accompagnement acoustique en strumming",
        tuning: "Standard",
      ),
      IdeeList(
        id: 39,
        description: "Theme heroic avec power chords",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 40,
        description: "Phrase rapide avec aller-retour",
        tuning: "Standard",
      ),
      IdeeList(
        id: 41,
        description: "Riff indie doux et melancolique",
        tuning: "Standard",
      ),
      IdeeList(id: 42, description: "Melodie sur pedal tone", tuning: "Open G"),
      IdeeList(
        id: 43,
        description: "Solo blues rock avec bends larges",
        tuning: "Standard",
      ),
      IdeeList(
        id: 44,
        description: "Arpeges chromatiques pour echauffement",
        tuning: "Standard",
      ),
      IdeeList(
        id: 45,
        description: "Riff tribal et percussif",
        tuning: "Drop D",
      ),
      IdeeList(
        id: 46,
        description: "Theme romantique en picking",
        tuning: "Standard",
      ),
      IdeeList(
        id: 47,
        description: "Progression sombre et minimale",
        tuning: "DADGAD",
      ),
      IdeeList(
        id: 48,
        description: "Rythme latin avec accents syncopes",
        tuning: "Standard",
      ),
      IdeeList(
        id: 49,
        description: "Melodie planante avec delay",
        tuning: "Open G",
      ),
      IdeeList(
        id: 50,
        description: "Finale energique avec montée progressive",
        tuning: "Standard",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          t.helloGaku,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
      drawer: const MonDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/createidee');
                },
                child: const Text('Créer une idée'),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: ideeList.length,
                itemBuilder: (context, index) {
                  //variables pour afficher les choses..
                  final idea = ideeList[index];
                  final displayTitle = '${t.idea} ${idea.id}';
                  final displayDescription = idea.description;
                  final displayGenre = t.guitar;
                  final displayBpm = '80';
                  final displayDifficulty = t.intermediate;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          context.go(
                            "/ideeDetail/${idea.id}/${idea.description}",
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      idea.tuning,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Text(
                                displayTitle,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                displayDescription,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade700,
                                  height: 1.4,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          t.genre,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          displayGenre,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          t.bpm,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          displayBpm,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          t.level,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          displayDifficulty,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.go(
                                      "/ideeDetail/${idea.id}/${idea.description}",
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text(t.details),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(currentRoute: '/idees'),
    );
  }
}
