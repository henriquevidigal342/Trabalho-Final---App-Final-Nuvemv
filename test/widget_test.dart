import 'package:flutter_test/flutter_test.dart';

import 'package:dicas_filmes_cloud/main.dart';

void main() {
  testWidgets('Tela inicial mostra o titulo do app', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuApp());

    expect(find.text('Dicas de Filmes'), findsOneWidget);
    expect(find.textContaining('Versão inicial do projeto.'), findsOneWidget);
  });
}
