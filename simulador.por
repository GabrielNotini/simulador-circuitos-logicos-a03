
programa
{
    // =========================================
    // SIMULADOR DE CIRCUITOS LOGICOS DIGITAIS
    // TRABALHO A03
    // =========================================


    // FUNCAO PARA VALIDAR ENTRADAS BINARIAS

    funcao inteiro lerBinario()
    {
        inteiro valor

        leia(valor)

        enquanto (valor != 0 e valor != 1)
        {
            escreva("\nERRO: Digite apenas 0 ou 1!\n")
            escreva("Digite novamente: ")
            leia(valor)
        }

        retorne valor
    }


    // =========================================
    // FUNCOES DAS PORTAS LOGICAS
    // =========================================


    // PORTA AND: AS DUAS ENTRADAS DEVEM SER 1

    funcao inteiro calcularAND(inteiro A, inteiro B)
    {
        se (A == 1 e B == 1)
        {
            retorne 1
        }
        senao
        {
            retorne 0
        }
    }


    // PORTA OR: PELO MENOS UMA ENTRADA DEVE SER 1

    funcao inteiro calcularOR(inteiro A, inteiro B)
    {
        se (A == 1 ou B == 1)
        {
            retorne 1
        }
        senao
        {
            retorne 0
        }
    }


    // PORTA NOT: INVERTE O VALOR DA ENTRADA

    funcao inteiro calcularNOT(inteiro A)
    {
        se (A == 0)
        {
            retorne 1
        }
        senao
        {
            retorne 0
        }
    }


    // PORTA XOR: AS ENTRADAS DEVEM SER DIFERENTES

    funcao inteiro calcularXOR(inteiro A, inteiro B)
    {
        se (A != B)
        {
            retorne 1
        }
        senao
        {
            retorne 0
        }
    }


    // =========================================
    // PROCEDIMENTO DAS TABELAS-VERDADE
    // =========================================

    funcao mostrarTabelas()
    {
        inteiro A, B


        // TABELA AND

        escreva("\n===== TABELA VERDADE AND =====\n")
        escreva("A | B | RESULTADO\n")
        escreva("-----------------\n")

        para (A = 0; A <= 1; A++)
        {
            para (B = 0; B <= 1; B++)
            {
                escreva(A, " | ", B, " | ",
                calcularAND(A, B), "\n")
            }
        }


        // TABELA OR

        escreva("\n===== TABELA VERDADE OR =====\n")
        escreva("A | B | RESULTADO\n")
        escreva("-----------------\n")

        para (A = 0; A <= 1; A++)
        {
            para (B = 0; B <= 1; B++)
            {
                escreva(A, " | ", B, " | ",
                calcularOR(A, B), "\n")
            }
        }


        // TABELA NOT

        escreva("\n===== TABELA VERDADE NOT =====\n")
        escreva("A | RESULTADO\n")
        escreva("-------------\n")

        para (A = 0; A <= 1; A++)
        {
            escreva(A, " | ", calcularNOT(A), "\n")
        }


        // TABELA XOR

        escreva("\n===== TABELA VERDADE XOR =====\n")
        escreva("A | B | RESULTADO\n")
        escreva("-----------------\n")

        para (A = 0; A <= 1; A++)
        {
            para (B = 0; B <= 1; B++)
            {
                escreva(A, " | ", B, " | ",
                calcularXOR(A, B), "\n")
            }
        }
    }


    // =========================================
    // FUNCAO PRINCIPAL
    // =========================================

    funcao inicio()
    {
        inteiro A, B, resultado, opcao

        opcao = -1

        enquanto (opcao != 0)
        {
            escreva("\n====================================\n")
            escreva("  SIMULADOR DE CIRCUITOS LOGICOS\n")
            escreva("====================================\n")

            escreva("1 - Porta AND (E)\n")
            escreva("2 - Porta OR (OU)\n")
            escreva("3 - Porta NOT (NAO)\n")
            escreva("4 - Porta XOR (OU EXCLUSIVO)\n")
            escreva("5 - Mostrar tabelas-verdade\n")
            escreva("0 - Sair\n")

            escreva("\nEscolha uma opcao: ")
            leia(opcao)


            // OPCAO 1: PORTA AND

            se (opcao == 1)
            {
                escreva("\n--- PORTA AND (E) ---\n")

                escreva("Digite A (0 ou 1): ")
                A = lerBinario()

                escreva("Digite B (0 ou 1): ")
                B = lerBinario()

                resultado = calcularAND(A, B)

                escreva("Resultado AND: ", resultado, "\n")
            }


            // OPCAO 2: PORTA OR

            senao se (opcao == 2)
            {
                escreva("\n--- PORTA OR (OU) ---\n")

                escreva("Digite A (0 ou 1): ")
                A = lerBinario()

                escreva("Digite B (0 ou 1): ")
                B = lerBinario()

                resultado = calcularOR(A, B)

                escreva("Resultado OR: ", resultado, "\n")
            }


            // OPCAO 3: PORTA NOT

            senao se (opcao == 3)
            {
                escreva("\n--- PORTA NOT (NAO) ---\n")

                escreva("Digite A (0 ou 1): ")
                A = lerBinario()

                resultado = calcularNOT(A)

                escreva("Resultado NOT: ", resultado, "\n")
            }


            // OPCAO 4: PORTA XOR

            senao se (opcao == 4)
            {
                escreva("\n--- PORTA XOR (OU EXCLUSIVO) ---\n")

                escreva("Digite A (0 ou 1): ")
                A = lerBinario()

                escreva("Digite B (0 ou 1): ")
                B = lerBinario()

                resultado = calcularXOR(A, B)

                escreva("Resultado XOR: ", resultado, "\n")
            }


            // OPCAO 5: TABELAS-VERDADE

            senao se (opcao == 5)
            {
                mostrarTabelas()
            }


            // OPCAO 0: SAIR

            senao se (opcao == 0)
            {
                escreva("\nEncerrando o simulador...\n")
                escreva("Obrigado por utilizar!\n")
            }


            // OPCAO INVALIDA

            senao
            {
                escreva("\nERRO: Opcao invalida!\n")
                escreva("Escolha uma opcao de 0 a 5.\n")
            }
        }
    }
}
