import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/categoria.dart';
import '../models/tipo_transacao.dart';

class CategoriaRepository {
  Future<List<Categoria>> listarCategorias(
      {TipoTransacao? tipoTransacao}) async {
    final supabase = Supabase.instance;
    final rows = await supabase.client
        .from('categorias')
        .select<List<Map<String, dynamic>>>();

    final categorias = rows
        .map((row) => Categoria(
            id: row['id'],
            descricao: row['descricao'],
            cor: Color(row['cor']),
            icone: IoniconsData(row['icone']),
            tipoTransacao: TipoTransacao.values[row['tipo_transacao']]))
        .toList();

    return categorias;
  }
}
