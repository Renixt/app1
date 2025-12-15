import 'package:app1/providers/characters_provider.dart';
import 'package:app1/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/character_card.dart';
import 'package:go_router/go_router.dart';
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
    final filteredCharacters = charactersProvider.characters.where((character) {
      final name = character['name'].toString().toLowerCase();
      final search = charactersProvider.searchTerm.toString().toLowerCase();

      return name.contains(search);
    }).toList();

    final screenWidth = MediaQuery.of(context).size.width;
    final spacing = screenWidth * 0.02;
    final runSpacing = screenWidth * 0.03;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick & Morty Encyclopedia'),
        leading: Icon(Icons.science),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Search a Character',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  context.read<CharactersProvider>().setSearchTerm(value);
                },
              ),
              SizedBox(height: screenWidth * .05),

              Wrap(
                spacing: spacing,
                runSpacing: runSpacing,
                children: filteredCharacters.map((character) {
                  return CharacterCard(
                    title: character['name'],
                    status: character['status'],
                    species: character['species'],
                    url: character['image'],
                    onTap: () {
                      context.push('/details', extra: character);
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  ); 
                  
                  
                  
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      context.read<CharactersProvider>().setSearchTerm('');
                    },
                  ),*/