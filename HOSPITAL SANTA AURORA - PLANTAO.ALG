Algoritmo "Hospital Santa Aurora - Plantao"

Var

   // VARIAVEIS DE CONTROLE

   i, turno: inteiro
   menu, continuar: inteiro
   especialidade, disponibilidade: inteiro
   id_atual, pode_cadastrar, idbusca: inteiro

   // CONTROLE DOS CADASTROS

   qtd_cad_medicos: inteiro
   qtd_cad_clinico, qtd_cad_pediatra, qtd_cad_cirurgiao: inteiro

   escolhe: caractere

   // IDENTIFICACAO DAS ESPECIALIDADES

   esp_pediatra, esp_clinico_geral, esp_cirurgiao: caractere

   // IDENTIFICACAO DOS MEDICOS

   id_clinico: vetor[1..9] de inteiro
   id_pediatra: vetor[1..8] de inteiro
   id_cirurgiao: vetor[1..8] de inteiro

   // DADOS DOS MEDICOS
   // O INDICE DO VETOR REPRESENTA O ID DO MEDICO

   nome_medico: vetor[1..25] de caractere
   especialidade_medico: vetor[1..25] de inteiro
   disp_medico: vetor[1..25] de inteiro

   // VETORES DE QUANTIDADES POR TURNO
   // POSICAO 1 = MANHA
   // POSICAO 2 = TARDE
   // POSICAO 3 = NOITE

   qtd_pediatras: vetor[1..3] de inteiro
   qtd_clinicos: vetor[1..3] de inteiro
   qtd_cirurgioes: vetor[1..3] de inteiro

   cadastrado: vetor[1..3] de inteiro

   trabalha_turno: logico


Inicio

   // IDENTIFICACAO DOS MEDICOS

   para i de 1 ate 8 faca
      id_pediatra[i] <- i
   fimpara

   para i de 1 ate 9 faca
      id_clinico[i] <- i + 9
   fimpara

   para i de 1 ate 8 faca
      id_cirurgiao[i] <- i + 17
   fimpara

   // IDENTIFICACAO DAS ESPECIALIDADES

   esp_pediatra <- "Pediatra"
   esp_clinico_geral <- "Clinico Geral"
   esp_cirurgiao <- "Cirurgiao"

   // INICIALIZACAO DOS CONTADORES

   qtd_cad_medicos <- 0
   qtd_cad_clinico <- 0
   qtd_cad_pediatra <- 0
   qtd_cad_cirurgiao <- 0

   // INICIALIZACAO DOS VETORES

   para i de 1 ate 3 faca

      qtd_pediatras[i] <- 0
      qtd_clinicos[i] <- 0
      qtd_cirurgioes[i] <- 0

      cadastrado[i] <- 0

   fimpara

   para i de 1 ate 25 faca

      nome_medico[i] <- ""
      especialidade_medico[i] <- 0
      disp_medico[i] <- 0

   fimpara

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
      escreval("1 - Cadastrar um medico")
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

      // CADASTRO DOS MEDICOS

      se (menu = 1) entao

         limpatela

         se (qtd_cad_medicos >= 25) entao

            escreval("Limite de medicos cadastrados atingido.")
            escreval("Nao e possivel realizar novos cadastros.")

         senao

            escolhe <- "S"

            enquanto (escolhe = "S") e (qtd_cad_medicos < 25) faca

               limpatela

               escreval("----------------------------------------")
               escreval("           CADASTRO DO MEDICO")
               escreval("----------------------------------------")

               // ESCOLHA DA ESPECIALIDADE

               escreval(" ")
               escreval("Especialidade:")
               escreval("1 - Pediatra")
               escreval("2 - Clinico Geral")
               escreval("3 - Cirurgiao")
               escreva("Escolha uma opcao: ")
               leia(especialidade)

               enquanto (especialidade < 1) ou (especialidade > 3) faca

                  escreval("Especialidade invalida!")
                  escreva("Digite 1, 2 ou 3: ")
                  leia(especialidade)

               fimenquanto

               pode_cadastrar <- 1

               // DEFINIR O ID CONFORME A ESPECIALIDADE

               se (especialidade = 1) entao

                  se (qtd_cad_pediatra >= 8) entao

                     escreval("Limite de pediatras atingido.")
                     pode_cadastrar <- 0

                  senao

                     id_atual <- id_pediatra[qtd_cad_pediatra + 1]

                  fimse

               fimse

               se (especialidade = 2) entao

                  se (qtd_cad_clinico >= 9) entao

                     escreval("Limite de clinicos gerais atingido.")
                     pode_cadastrar <- 0

                  senao

                     id_atual <- id_clinico[qtd_cad_clinico + 1]

                  fimse

               fimse

               se (especialidade = 3) entao

                  se (qtd_cad_cirurgiao >= 8) entao

                     escreval("Limite de cirurgioes atingido.")
                     pode_cadastrar <- 0

                  senao

                     id_atual <- id_cirurgiao[qtd_cad_cirurgiao + 1]

                  fimse

               fimse

               se (pode_cadastrar = 1) entao

                  // CADASTRO DA DISPONIBILIDADE

                  escreval(" ")
                  escreval("Disponibilidade:")
                  escreval("1 - Manha")
                  escreval("2 - Tarde")
                  escreval("3 - Noite")
                  escreval("4 - Manha e Tarde")
                  escreval("5 - Manha e Noite")
                  escreval("6 - Tarde e Noite")
                  escreva("Escolha uma opcao: ")
                  leia(disponibilidade)

                  enquanto (disponibilidade < 1) ou (disponibilidade > 6) faca

                     escreval("Disponibilidade invalida!")
                     escreva("Digite um valor de 1 a 6: ")
                     leia(disponibilidade)

                  fimenquanto

                  // NOME DO MEDICO

                  escreval(" ")
                  escreva("Nome do especialista: ")
                  leia(nome_medico[id_atual])

                  // GUARDAR OS DADOS DO MEDICO

                  especialidade_medico[id_atual] <- especialidade
                  disp_medico[id_atual] <- disponibilidade

                  // ATUALIZAR O CONTADOR DA ESPECIALIDADE

                  se (especialidade = 1) entao
                     qtd_cad_pediatra <- qtd_cad_pediatra + 1
                  fimse

                  se (especialidade = 2) entao
                     qtd_cad_clinico <- qtd_cad_clinico + 1
                  fimse

                  se (especialidade = 3) entao
                     qtd_cad_cirurgiao <- qtd_cad_cirurgiao + 1
                  fimse

                  qtd_cad_medicos <- qtd_cad_medicos + 1

                  // ATUALIZAR AS QUANTIDADES DOS TURNOS

                  para turno de 1 ate 3 faca

                     trabalha_turno <- falso

                     se (disponibilidade = turno) entao
                        trabalha_turno <- verdadeiro
                     fimse

                     se (disponibilidade = 4) e (turno <= 2) entao
                        trabalha_turno <- verdadeiro
                     fimse

                     se (disponibilidade = 5) e ((turno = 1) ou (turno = 3)) entao
                        trabalha_turno <- verdadeiro
                     fimse

                     se (disponibilidade = 6) e (turno >= 2) entao
                        trabalha_turno <- verdadeiro
                     fimse

                     se (trabalha_turno = verdadeiro) entao

                        se (especialidade = 1) entao
                           qtd_pediatras[turno] <- qtd_pediatras[turno] + 1
                        fimse

                        se (especialidade = 2) entao
                           qtd_clinicos[turno] <- qtd_clinicos[turno] + 1
                        fimse

                        se (especialidade = 3) entao
                           qtd_cirurgioes[turno] <- qtd_cirurgioes[turno] + 1
                        fimse

                        cadastrado[turno] <- 1

                     fimse

                  fimpara

                  // FICHA DO MEDICO

                  limpatela

                  escreval("===========================")
                  escreval("       FICHA DO MEDICO")
                  escreval("===========================")

                  se (especialidade = 1) entao
                     escreval("Especialidade: ", esp_pediatra)
                  fimse

                  se (especialidade = 2) entao
                     escreval("Especialidade: ", esp_clinico_geral)
                  fimse

                  se (especialidade = 3) entao
                     escreval("Especialidade: ", esp_cirurgiao)
                  fimse

                  se (disponibilidade = 1) entao
                     escreval("Disponibilidade: Manha")
                  fimse

                  se (disponibilidade = 2) entao
                     escreval("Disponibilidade: Tarde")
                  fimse

                  se (disponibilidade = 3) entao
                     escreval("Disponibilidade: Noite")
                  fimse

                  se (disponibilidade = 4) entao
                     escreval("Disponibilidade: Manha e Tarde")
                  fimse

                  se (disponibilidade = 5) entao
                     escreval("Disponibilidade: Manha e Noite")
                  fimse

                  se (disponibilidade = 6) entao
                     escreval("Disponibilidade: Tarde e Noite")
                  fimse

                  escreval("Nome: ", nome_medico[id_atual])
                  escreval("ID do especialista: ", id_atual)

                  escreval("===========================")
                  escreval("MEDICO CADASTRADO COM SUCESSO!")
                  escreval("===========================")

                  // PERGUNTAR SE DESEJA CADASTRAR OUTRO MEDICO

                  se (qtd_cad_medicos < 25) entao

                     escreval(" ")
                     escreval("Realizar um novo cadastro? [S/N]")
                     leia(escolhe)

                     enquanto (escolhe <> "S") e (escolhe <> "N") faca

                        escreval("Insira S ou N.")
                        leia(escolhe)

                     fimenquanto

                  senao

                     escolhe <- "N"
                     escreval("Limite total de medicos atingido.")

                  fimse

               fimse

            fimenquanto

         fimse

      fimse

      // CONSULTAR OS TURNOS

      se (menu = 2) entao

         limpatela

         escreval("----------------------------------------")
         escreval("          CONSULTA DO PLANTAO")
         escreval("----------------------------------------")

         escreval(" ")
         escreval("TURNO DA MANHA")

         se (cadastrado[1] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[1])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[1])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[1])
         senao
            escreval("Nenhum medico disponivel neste turno.")
         fimse

         escreval(" ")
         escreval("TURNO DA TARDE")

         se (cadastrado[2] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[2])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[2])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[2])
         senao
            escreval("Nenhum medico disponivel neste turno.")
         fimse

         escreval(" ")
         escreval("TURNO DA NOITE")

         se (cadastrado[3] = 1) entao
            escreval(esp_pediatra, ": ", qtd_pediatras[3])
            escreval(esp_clinico_geral, ": ", qtd_clinicos[3])
            escreval(esp_cirurgiao, ": ", qtd_cirurgioes[3])
         senao
            escreval("Nenhum medico disponivel neste turno.")
         fimse

         escreval("----------------------------------------")
         escreva("Digite 0 para voltar ao menu: ")
         leia(menu)

         enquanto (menu <> 0) faca

            escreva("Digite 0 para voltar ao menu: ")
            leia(menu)

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
   escreval(" ")



   para i de 1 ate qtd_cad_pediatra faca
      escreva("ID: ", i, " | ","NOME: ", nome_medico[i] )
      Se (disp_medico[i] = 1) Entao
               Escreval(" | Turno: Manha")
            Senao
               Se (disp_medico[i] = 2) Entao
                  Escreval(" | Turno: Tarde")
               Senao
                  Se (disp_medico[i] = 3) Entao
                     Escreval(" | Turno: Noite")
                  Senao
                     Se (disp_medico[i] = 4) Entao
                        Escreval(" | Turno: Manha e Tarde")
                     Senao
                        Se (disp_medico[i] = 5) Entao
                           Escreval(" | Turno: Manha e Noite")
                        Senao
                           Escreval(" | Turno: Tarde e Noite")
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe
      i <- i + 1
   fimpara

   escreval(" ")
   escreval("TURNO DA TARDE")

   se (cadastrado[2] = 1) entao
      escreval(esp_pediatra, ": ", qtd_pediatras[2])
      escreval(esp_clinico_geral, ": ", qtd_clinicos[2])
      escreval(esp_cirurgiao, ": ", qtd_cirurgioes[2])
   senao
      escreval("Nenhum medico disponivel neste turno.")
   fimse

   escreval(" ")
   escreval("TURNO DA NOITE")

   se (cadastrado[3] = 1) entao
      escreval(esp_pediatra, ": ", qtd_pediatras[3])
      escreval(esp_clinico_geral, ": ", qtd_clinicos[3])
      escreval(esp_cirurgiao, ": ", qtd_cirurgioes[3])
   senao
      escreval("Nenhum medico disponivel neste turno.")
   fimse

   escreval("----------------------------------------")
   escreval("PLANTAO REGISTRADO!")
   escreval("Obrigado por utilizar o Medshift!")
   escreval("----------------------------------------")

Fimalgoritmo