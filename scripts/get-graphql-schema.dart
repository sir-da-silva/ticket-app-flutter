import 'dart:io';

Future<void> main() async {
  const endpoint = 'http://localhost:4000/graphql';
  const outputPath = 'lib/graphql/schema.graphql';

  print('🛰  Exécution de get-graphql-schema...');

  // Commande exacte
  final result = await Process.run('get-graphql-schema', [
    endpoint,
  ], runInShell: true);

  // Vérification de la sortie ou des erreurs
  if (result.exitCode != 0) {
    print('❌ Erreur lors de la récupération du schéma :');
    print(result.stderr);
    exit(result.exitCode);
  }

  // Écriture du résultat dans le fichier
  final file = File(outputPath);
  await file.create(recursive: true);
  await file.writeAsString(result.stdout);

  print('✅ Schéma sauvegardé dans $outputPath');
}
