# Sistema de Cotação de Moedas

Mini projeto desenvolvido em **Portugol** para praticar lógica de programação. O programa recebe um valor em reais, permite escolher uma moeda de destino e calcula a conversão considerando uma taxa de serviço de 10%.

## Funcionalidades

- Recebe do usuário um valor em reais (R$).
- Apresenta opções de conversão para:
  - Dólar (USD)
  - Euro (EUR)
  - Bitcoin (BTC)
- Desconta uma taxa de cotação de 10% do valor informado antes da conversão.
- Exibe um relatório com o valor original, o valor da taxa, o valor restante e o resultado convertido.
- Permite encerrar o programa pela opção `0`.
- Verifica se o valor informado é maior que zero e trata opções inválidas.

## Cotações utilizadas

As cotações estão definidas como constantes no código e são valores ilustrativos de referência de **03/11/2026**:

| Moeda | Cotação utilizada |
|---|---:|
| Dólar (USD) | R$ 5,50 |
| Euro (EUR) | R$ 6,16 |
| Bitcoin (BTC) | R$ 426.000,00 |

> **Atenção:** as cotações são fixas no código. O programa não consulta uma API nem representa cotações em tempo real. Para atualizar os valores, altere as constantes no início do arquivo `cotacao_moedas.por`.

## Regra de cálculo

O programa calcula primeiro a taxa de 10%:

```text
valor_taxado = valor_real * 0,10
```

Em seguida, subtrai a taxa do valor informado:

```text
valor_disponivel = valor_real - valor_taxado
```

Por fim, divide o valor disponível pela cotação da moeda escolhida:

```text
valor_convertido = valor_disponivel / cotacao_da_moeda
```

### Exemplo

Considerando uma entrada de **R$ 100,00** e a cotação do dólar de **R$ 5,50**:

- Taxa (10%): R$ 10,00
- Valor disponível para conversão: R$ 90,00
- Resultado: aproximadamente US$ 16,36

## Como executar

1. Instale ou abra o **Portugol Studio**.
2. Baixe o arquivo `cotacao_moedas.por` deste repositório.
3. Abra o arquivo no Portugol Studio.
4. Execute o programa e informe o valor desejado.
5. Escolha uma das opções do menu.

## Estrutura do repositório

```text
sistema-cotacao-moedas/
├── cotacao_moedas.por
└── README.md
```

## Conceitos de lógica de programação praticados

- Declaração de constantes e variáveis.
- Tipos de dados (`real` e `inteiro`).
- Entrada e saída de dados (`leia` e `escreva`).
- Operadores aritméticos.
- Estruturas condicionais (`se`).
- Estrutura de seleção (`escolha`).
- Validação de entrada.
- Organização de um algoritmo em etapas.

## Observação

Este projeto tem finalidade didática. A taxa de 10% é descontada do valor em reais antes da conversão. Não há integração com serviços financeiros e os resultados não devem ser utilizados como cotação comercial.
