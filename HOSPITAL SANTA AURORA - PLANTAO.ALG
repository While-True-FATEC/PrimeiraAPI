
Algoritmo "Hospital Santa Aurora - Plantao"

Var
   //
   // VARIAVEIS


   qtd_ped_manha, qtd_clinico_manha, qtd_cirurgiao_manha, i: inteiro
   qtd_ped_tarde, qtd_clinico_tarde, qtd_cirurgiao_tarde: inteiro
   qtd_ped_noite, qtd_clinico_noite, qtd_cirurgiao_noite: inteiro
   nome_pediatra: caractere

   // IDENTIFICACAO DAS ESPECIALIDADES

   esp_pediatra, esp_clinico_geral, esp_cirurgiao: caractere

   // IDENTIFICACAO DOS MEDICOS

   id_clinico: vetor[1..9] de inteiro
   id_pediatra: vetor[1..8] de inteiro
   id_cirurgiao: vetor[1..8] de inteiro


   // VETORES DE QUANTIDADES
   // POSICAO 1 = MANHA
   // POSICAO 2 = TARDE
   // POSICAO 3 = NOITE


   qtd_pediatras: vetor[1..3] de inteiro
   qtd_clinicos: vetor[1..3] de inteiro
   qtd_cirurgioes: vetor[1..3] de inteiro

   cadastrado: vetor[1..3] de inteiro


   // VARIAVEIS DE CONTROLE


   menu, turno, continuar: inteiro
   confirmar, especialidade: inteiro
   quantidade, minimo: inteiro
   opcao_proximo: inteiro

Inicio

      // IDENTIFICACAO DOS MEDICOS

   // CLINICOS GERAIS
   para i de 1 ate 9 faca
      id_clinico[i] <- i
   fimpara

   // PEDIATRAS
   para i de 1 ate 8 faca
      id_pediatra[i] <- i + 9
   fimpara

   // CIRURGOES
   para i de 1 ate 8 faca
      id_cirurgiao[i] <- i + 17
   fimpara

   // IDENTIFICACAO DAS ESPECIALIDADES

   esp_pediatra <- "Pediatra"
   esp_clinico_geral <- "Clinico Geral"
   esp_cirurgiao <- "Cirurgiao"

   // INICIALIZACAO DAS QUANTIDADES ORIGINAIS

   qtd_ped_manha <- 0
   qtd_clinico_manha <- 0
   qtd_cirurgiao_manha <- 0

   qtd_ped_tarde <- 0
   qtd_clinico_tarde <- 0
   qtd_cirurgiao_tarde <- 0

   qtd_ped_noite <- 0
   qtd_clinico_noite <- 0
   qtd_cirurgiao_noite <- 0

   // INICIALIZACAO DOS VETORES

   i <- 1

   enquanto (i <= 3) faca

      qtd_pediatras[i] <- 0
      qtd_clinicos[i] <- 0
      qtd_cirurgioes[i] <- 0

      cadastrado[i] <- 0

      i <- i + 1

   fimenquanto

   // APRESENTACAO DO SISTEMA

   limpatela

   escreval("----------------------------------------")
   escreval("       HOSPITAL SANTA AURORA")
   escreval("              MEDSHIFT - WHILETRUE")
   escreval("----------------------------------------")
   escreval("Ola! Seja bem-vindo ao sistema de plantao.")
   escreval(" ")

   continuar <- 1

   // MENU PRINCIPAL

   enquanto (continuar = 1) faca

      escreval(" ")
      escreval("----------------------------------------")
      escreval("             MENU PRINCIPAL")
      escreval("----------------------------------------")
      escreval("1 - Cadastrar um turno")
      escreval("2 - Consultar os turnos")
      escreval("0 - Finalizar o plantao")
      escreval("----------------------------------------")
      escreva("Escolha uma opcao: ")
      leia(menu)

      enquanto (menu <> 0) e (menu <> 1) e (menu <> 2) faca

         escreval("Opcao invalida!")
         escreva("Digite 1, 2 ou 0: ")
         leia(menu)

      fimenquanto

      // CADASTRO DE UM TURNO

      se (menu = 1) entao

         limpatela

         escreval("----------------------------------------")
         escreval("            SELECIONE O TURNO")
         escreval("----------------------------------------")
         escreval("1 - Manha")
         escreval("2 - Tarde")
         escreval("3 - Noite")
         escreval("0 - Voltar ao menu")
         escreval("----------------------------------------")
         escreva("Escolha o turno: ")
         leia(turno)

         enquanto (turno < 0) ou (turno > 3) faca

            escreval("Turno invalido!")
            escreva("Digite 1, 2, 3 ou 0: ")
            leia(turno)

         fimenquanto

         se (turno >= 1) e (turno <= 3) entao

            limpatela

            se (turno = 1) entao
               escreval("CADASTRO DO TURNO DA MANHA")
            fimse

            se (turno = 2) entao
               escreval("CADASTRO DO TURNO DA TARDE")
            fimse

            se (turno = 3) entao
               escreval("CADASTRO DO TURNO DA NOITE")
            fimse

            escreval("----------------------------------------")

            // CADASTRO DAS ESPECIALIDADES

            especialidade <- 1

            enquanto (especialidade <= 3) faca

               // QUANTIDADE MINIMA

               minimo <- 1

               se (especialidade = 2) entao
                  minimo <- 2
               fimse

               // EXIBIR A ESPECIALIDADE

               se (especialidade = 1) entao
                  escreval(" ")
                  escreval("Especialidade: ", esp_pediatra)
               fimse

               se (especialidade = 2) entao
                  escreval(" ")
                  escreval("Especialidade: ", esp_clinico_geral)
               fimse

               se (especialidade = 3) entao
                  escreval(" ")
                  escreval("Especialidade: ", esp_cirurgiao)
               fimse

               escreval("Minimo: ", minimo)
               escreval("Maximo: 50")
               escreva("Informe a quantidade: ")
               leia(quantidade)

               // VALIDAR A QUANTIDADE

               enquanto (quantidade < minimo) ou (quantidade > 50) faca

                  escreval("Quantidade invalida!")
                  escreval("Informe um valor entre ", minimo, " e 50.")
                  escreva("Tente novamente: ")
                  leia(quantidade)

               fimenquanto

               // GUARDAR NO VETOR DO TURNO ESCOLHIDO

               se (especialidade = 1) entao
                  qtd_pediatras[turno] <- quantidade
               fimse

               se (especialidade = 2) entao
                  qtd_clinicos[turno] <- quantidade
               fimse

               se (especialidade = 3) entao
                  qtd_cirurgioes[turno] <- quantidade
               fimse

               especialidade <- especialidade + 1

            fimenquanto

            // CONFERENCIA E CORRECAO DOS DADOS

            confirmar <- 0

            enquanto (confirmar <> 1) faca

               limpatela

               escreval("----------------------------------------")
               escreval("             CONFERENCIA")
               escreval("----------------------------------------")

               se (turno = 1) entao
                  escreval("Turno: Manha")
               fimse

               se (turno = 2) entao
                  escreval("Turno: Tarde")
               fimse

               se (turno = 3) entao
                  escreval("Turno: Noite")
               fimse

               escreval(" ")
               escreval(esp_pediatra, ": ", qtd_pediatras[turno])
               escreval(esp_clinico_geral, ": ", qtd_clinicos[turno])
               escreval(esp_cirurgiao, ": ", qtd_cirurgioes[turno])

               escreval("----------------------------------------")
               escreval("1 - Confirmar os dados")
               escreval("2 - Corrigir uma quantidade")
               escreval("----------------------------------------")
               escreva("Escolha uma opcao: ")
               leia(confirmar)

               enquanto (confirmar <> 1) e (confirmar <> 2) faca

                  escreval("Opcao invalida!")
                  escreva("Digite 1 ou 2: ")
                  leia(confirmar)

               fimenquanto

               se (confirmar = 2) entao

                  escreval(" ")
                  escreval("QUAL ESPECIALIDADE DESEJA CORRIGIR?")
                  escreval("1 - ", esp_pediatra)
                  escreval("2 - ", esp_clinico_geral)
                  escreval("3 - ", esp_cirurgiao)
                  escreva("Escolha uma opcao: ")
                  leia(especialidade)

                  enquanto (especialidade < 1) ou (especialidade > 3) faca

                     escreval("Opcao invalida!")
                     escreva("Digite 1, 2 ou 3: ")
                     leia(especialidade)

                  fimenquanto

                  // DEFINIR O MINIMO DA ESPECIALIDADE

                  minimo <- 1

                  se (especialidade = 2) entao
                     minimo <- 2
                  fimse

                  // SOLICITAR A NOVA QUANTIDADE

                  se (especialidade = 1) entao
                     escreva("Nova quantidade de pediatras: ")
                  fimse

                  se (especialidade = 2) entao
                     escreva("Nova quantidade de clinicos gerais: ")
                  fimse

                  se (especialidade = 3) entao
                     escreva("Nova quantidade de cirurgioes: ")
                  fimse

                  leia(quantidade)

                  enquanto (quantidade < minimo) ou (quantidade > 50) faca

                     escreval("Quantidade invalida!")
                     escreval("Informe um valor entre ", minimo, " e 50.")
                     escreva("Tente novamente: ")
                     leia(quantidade)

                  fimenquanto

                  // ATUALIZAR O VETOR

                  se (especialidade = 1) entao
                     qtd_pediatras[turno] <- quantidade
                  fimse

                  se (especialidade = 2) entao
                     qtd_clinicos[turno] <- quantidade
                  fimse

                  se (especialidade = 3) entao
                     qtd_cirurgioes[turno] <- quantidade
                  fimse

                  confirmar <- 0

               fimse

            fimenquanto

            // CONFIRMAR O CADASTRO DO TURNO

            cadastrado[turno] <- 1

            escreval(" ")
            escreval("----------------------------------------")
            escreval("      TURNO REGISTRADO COM SUCESSO!")
            escreval("----------------------------------------")

            escreval("1 - Cadastrar outro turno")
            escreval("2 - Voltar ao menu principal")
            escreva("Escolha uma opcao: ")
            leia(opcao_proximo)

            enquanto (opcao_proximo <> 1) e (opcao_proximo <> 2) faca

               escreval("Opcao invalida!")
               escreva("Digite 1 ou 2: ")
               leia(opcao_proximo)

            fimenquanto

         fimse

      fimse

      // CONSULTAR OS TURNOS

      se (menu = 2) entao

         limpatela

         escreval("----------------------------------------")
         escreval("          CONSULTA DO PLANTÃO")
         escreval("----------------------------------------")

         escreval(" ")
         escreval("TURNO DA MANHA")

         se (cadastrado[1] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[1])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[1])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[1])
         senao
            escreval("Turno nao cadastrado.")
         fimse

         escreval(" ")
         escreval("TURNO DA TARDE")

         se (cadastrado[2] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[2])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[2])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[2])
         senao
            escreval("Turno nao cadastrado.")
         fimse

         escreval(" ")
         escreval("TURNO DA NOITE")

         se (cadastrado[3] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[3])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[3])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[3])
         senao
            escreval("Turno nao cadastrado.")
         fimse

         escreval("----------------------------------------")
         escreva("Digite 0 para voltar ao menu: ")
         leia(opcao_proximo)

         enquanto (opcao_proximo <> 0) faca
            escreva("Digite 0 para voltar ao menu: ")
            leia(opcao_proximo)
         fimenquanto

      fimse

      // FINALIZAR O SISTEMA

      se (menu = 0) entao
         continuar <- 0
      fimse

   fimenquanto

   // RESUMO FINAL DO PLANTAO

   limpatela

   escreval("----------------------------------------")
   escreval("           RESUMO DO PLANTAO")
   escreval("----------------------------------------")

   escreval(" ")
   escreval("TURNO DA MANHA")

   se (cadastrado[1] = 1) entao
      escreval(esp_pediatra, ": ", qtd_pediatras[1])
      escreval(esp_clinico_geral, ": ", qtd_clinicos[1])
      escreval(esp_cirurgiao, ": ", qtd_cirurgioes[1])
   senao
      escreval("Turno nao cadastrado.")
   fimse

   escreval(" ")
   escreval("TURNO DA TARDE")

   se (cadastrado[2] = 1) entao
      escreval(esp_pediatra, ": ", qtd_pediatras[2])
      escreval(esp_clinico_geral, ": ", qtd_clinicos[2])
      escreval(esp_cirurgiao, ": ", qtd_cirurgioes[2])
   senao
      escreval("Turno nao cadastrado.")
   fimse

   escreval(" ")
   escreval("TURNO DA NOITE")

   se (cadastrado[3] = 1) entao
      escreval(esp_pediatra, ": ", qtd_pediatras[3])
      escreval(esp_clinico_geral, ": ", qtd_clinicos[3])
      escreval(esp_cirurgiao, ": ", qtd_cirurgioes[3])
   senao
      escreval("Turno nao cadastrado.")
   fimse

   escreval("----------------------------------------")
   escreval("PLANTAO SELECIONADO REGISTRADO!")
   escreval("Obrigado por utilizar o Medshift!")
   escreval("----------------------------------------")

Fimalgoritmo
