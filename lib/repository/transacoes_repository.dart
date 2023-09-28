import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/categoria.dart';
import '../models/conta.dart';
import '../models/tipo_transacao.dart';
import '../models/transacao.dart';
import 'categoria_repository.dart';

class TransacoesReepository {
  Future<List<Transacao>> listarTransacoes(
      {TipoTransacao? tipoTransacao,
      Categoria? categoria,
      Conta? conta}) async {
    final supabase = Supabase.instance;
    final rows = await supabase.client
        .from('transacoes')
        .select<List<Map<String, dynamic>>>();

    final categorias = await CategoriaRepository().listarCategorias();

    final transacoes = rows.map((row) {
      final categoriaID = row['categoria'];
      final contaID = row['conta'];

      // Mapeie categoria com base no ID usando CategoriaRepository
      Categoria categoria = categorias.firstWhere(
          (cat) => cat.id == categoriaID,
          orElse: () => Categoria(
              id: 0,
              descricao: 'Categoria Não Encontrada',
              cor: Colors.black,
              icone: Icons.data_object,
              tipoTransacao: TipoTransacao.despesa)
          // Valor padrão se não encontrar
          );

      // Implemente a lógica de mapeamento da conta com base no ID
      // Retorne a conta correspondente

      return Transacao(
        id: row['id'],
        descricao: row['descricao'],
        tipoTransacao: TipoTransacao.values[row['tipo_transacao']],
        valor: row['valor'],
        data: row['data'],
        detalhes: row['detalhes'],
        categoria: categoria,
        conta: contaID,
      );
    }).toList();

    return transacoes;
  }

  // Implemente a lógica de mapeamento da conta com base no ID
  // Retorne a conta correspondente
}
