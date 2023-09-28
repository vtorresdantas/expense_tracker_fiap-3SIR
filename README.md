# Projeto de Carteira de Investimentos com Flutter e Supabase

## Descrição do Projeto

O Projeto de Carteira de Investimentos é uma aplicação móvel desenvolvida em Flutter que permite aos usuários acompanhar e gerenciar seus investimentos de forma eficiente. Além disso, integra-se ao Supabase, uma plataforma poderosa de banco de dados, para a inserção e consulta de dados de investimentos.

## Funcionalidades Principais

- **Registro de Investimentos**: Os usuários podem adicionar informações sobre seus investimentos, como tipo de ativo, valor investido, data de compra, etc.

- **Consulta de Investimentos**: Os usuários podem visualizar uma lista de todos os investimentos registrados.

- **Relatórios e Estatísticas**: A aplicação fornece gráficos e estatísticas para ajudar os usuários a acompanhar o desempenho de seus investimentos ao longo do tempo.

## Tecnologias Utilizadas

- [Flutter](https://flutter.dev/): Um SDK de código aberto para criar aplicativos nativos para Android e iOS a partir de uma única base de código.

- [Supabase](https://supabase.io/): Uma plataforma de banco de dados com funcionalidades de API e autenticação incorporadas.

## Capturas de Tela

![Tela de Registro de Investimentos](screenshots/registro_investimento.png)
*Legenda: Tela de Registro de Investimentos*

![Tela de Consulta de Investimentos](screenshots/consulta_investimentos.png)
*Legenda: Tela de Consulta de Investimentos*

## Como Instalar

1. Clone o repositório.
2. Instale as dependências utilizando `flutter pub get`.
3. Configure as credenciais do Supabase no arquivo `supabase_config.dart`.

## Configuração do Supabase

Para integrar o Supabase com o projeto, é necessário criar um projeto no Supabase, obter as credenciais e configurá-las no arquivo `supabase_config.dart`.

```dart
const supabaseUrl = 'https://ujxzciqowpfyshxagmhj.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVqeHpjaXFvd3BmeXNoeGFnbWhqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTU5MzU3NDMsImV4cCI6MjAxMTUxMTc0M30.T6WJogufEcRVE5Zwsl1nYakrCJfXeQr91OtR2BD-4Uw';
