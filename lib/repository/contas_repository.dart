import '../models/conta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ContasRepository {
  Future<List<Conta>> listarContas({TipoConta? tipoConta}) async {
    final supabase = Supabase.instance;
    final rows = await supabase.client
        .from('Contas')
        .select<List<Map<String, dynamic>>>();

    final contas = rows
        .map((row) => Conta(
            id: row['id'],
            bancoId: row['bancoId'],
            descricao: row['descricao'],
            tipoConta: TipoConta.values[row['tipoConta']]))
        .toList();

    return contas;
  }
}
