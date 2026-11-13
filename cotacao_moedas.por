// Backend de uma aplicação de cotação de moedas
// Projeto desenvolvido em Portugol Studio
// Cotação de referência: 03/11/2026

programa
{
    funcao inicio()
    {
        // Declaração de constantes
        const real moeda_dolar = 5.50
        const real moeda_euro = 6.16
        const real moeda_bitcoin = 426000.00

        // Declaração de variáveis
        real valor_real, valor_convertido
        real taxa = 0.10
        real valor_taxado
        inteiro opcao_moeda

        // Apresentação do sistema
        escreva("============== Sistema de Cotação de Moedas ==============\n")
        escreva("Será cobrada uma taxa de 10% sobre o valor informado.\n\n")

        escreva("Qual valor em Reais (R$) deseja converter? ")
        leia(valor_real)

        // Validação do valor informado
        se (valor_real <= 0)
        {
            escreva("\nInforme um valor maior que zero. Sistema encerrado.\n")
            retorne
        }

        // Menu de opções
        escreva("\nEscolha a moeda para conversão:\n")
        escreva("[1] Dólar (USD)\n")
        escreva("[2] Euro (EUR)\n")
        escreva("[3] Bitcoin (BTC)\n")
        escreva("[0] Encerrar o sistema\n")
        escreva("Opção: ")
        leia(opcao_moeda)

        // Escolha da moeda
        escolha (opcao_moeda)
        {
            caso 0:
                escreva("\nSistema encerrado!\n")
                pare

            caso 1:
                valor_taxado = valor_real * taxa
                valor_convertido = (valor_real - valor_taxado) / moeda_dolar

                escreva("\n========== Relatório da Cotação ==========\n")
                escreva("Valor informado: R$ ", valor_real, "\n")
                escreva("Valor após desconto da taxa: R$ ", valor_real - valor_taxado, "\n")
                escreva("Valor convertido para Dólar: US$ ", valor_convertido, "\n")
                escreva("Taxa de cotação (10%): R$ ", valor_taxado, "\n")
                pare

            caso 2:
                valor_taxado = valor_real * taxa
                valor_convertido = (valor_real - valor_taxado) / moeda_euro

                escreva("\n========== Relatório da Cotação ==========\n")
                escreva("Valor informado: R$ ", valor_real, "\n")
                escreva("Valor após desconto da taxa: R$ ", valor_real - valor_taxado, "\n")
                escreva("Valor convertido para Euro: EUR ", valor_convertido, "\n")
                escreva("Taxa de cotação (10%): R$ ", valor_taxado, "\n")
                pare

            caso 3:
                valor_taxado = valor_real * taxa
                valor_convertido = (valor_real - valor_taxado) / moeda_bitcoin

                escreva("\n========== Relatório da Cotação ==========\n")
                escreva("Valor informado: R$ ", valor_real, "\n")
                escreva("Valor após desconto da taxa: R$ ", valor_real - valor_taxado, "\n")
                escreva("Valor convertido para Bitcoin: BTC ", valor_convertido, "\n")
                escreva("Taxa de cotação (10%): R$ ", valor_taxado, "\n")
                pare

            caso contrario:
                escreva("\nOpção inválida. Execute o programa novamente e escolha uma opção válida.\n")
                pare
        }
    }
}
