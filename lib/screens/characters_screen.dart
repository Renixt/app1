import 'package:app1/providers/characters_provider.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/character_card.dart';
import 'package:provider/provider.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    super.initState();
    _loadCharacters();
  }

  void _loadCharacters() async {
    await Future.microtask(() {});
    if (!mounted) return;
    Provider.of<CharactersProvider>(context, listen: false).fetchCharacters();
  }

  @override
  Widget build(BuildContext context) {
    final charactersProvider = context.watch<CharactersProvider>();

    final screenWidth = MediaQuery.of(context).size.width;
    final spacing = screenWidth * 0.02;
    final runSpacing = screenWidth * 0.03;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick & Morty Enciclopedia'),
        leading: Icon(Icons.science),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            spacing: spacing,
            runSpacing: runSpacing,
            children: charactersProvider.characters.map((character) {
              return CharacterCard(
                title: character['name'],
                status: character['status'],
                species: character['species'],
                url: character['image'],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
