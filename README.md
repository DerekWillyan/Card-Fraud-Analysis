# Card Fraud Analysis

Este repositório contém um conjunto de consultas SQL para análise de dados de transações de cartão de crédito, com foco em identificar e entender padrões de fraude. O projeto inclui consultas para análise descritiva, análise de fraude, análise geoespacial e análise demográfica, além de um dashboard de visualização.

## Arquivos

- `queries.sql`: Contém as consultas SQL utilizadas para análise dos dados de transações de cartão de crédito.
- `dashboard.png`: Imagem do dashboard criado para visualizar os resultados das consultas.

## Estrutura do Repositório

1. **queries.sql**
   - **Descrição**: Este arquivo contém todas as consultas SQL necessárias para realizar a análise dos dados. As consultas estão divididas em diferentes categorias:
     - **Análise Descritiva**: Distribuição de transações, volume de transações.
     - **Análise de Fraude**: Taxa de fraude, distribuição de fraude por categoria e estado, análise temporal de fraude.
     - **Análise Geoespacial**: Mapa de fraude, padrões de localização.
     - **Análise Demográfica**: Idade dos titulares do cartão, profissões e fraude.
     - **Análise de Valor de Transação**: Relação entre valor das transações e probabilidade de fraude, distribuição do valor das transações fraudulentas e não fraudulentas.

2. **dashboard.png**
   - **Descrição**: Captura de tela do dashboard criado para visualizar os resultados das análises realizadas com as consultas SQL. O dashboard ilustra as principais métricas e padrões encontrados durante a análise dos dados.

## Uso

1. **Executando as Consultas SQL**
   - Importe o arquivo `queries.sql` em sua ferramenta de gerenciamento de banco de dados (por exemplo, MySQL Workbench, phpMyAdmin) e execute as consultas para obter os resultados desejados.

2. **Visualizando o Dashboard**
   - Utilize o print do dashboard (`dashboard.png`) como referência para configurar seu próprio painel de visualização em ferramentas como Grafana ou Tableau, baseando-se nas consultas SQL fornecidas.

## Pré-requisitos

- **Banco de Dados**: MySQL ou outro sistema compatível com SQL.
- **Ferramentas de Visualização**: Grafana, Tableau ou qualquer outra ferramenta de visualização de dados.

## Contribuições

Se você tiver sugestões ou encontrar problemas com as consultas ou o dashboard, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto é licenciado sob a [Licença MIT](LICENSE).

## Contato

Para mais informações, entre em contato com [Derek Willyan](mailto:willyanderek42@gmail.com).
