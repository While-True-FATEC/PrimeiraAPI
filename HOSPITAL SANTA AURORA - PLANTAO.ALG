Algoritmo "Hospital Santa Aurora - Plantao"

Var
   i: inteiro
   especialidade: vetor [1..30] de inteiro
   disponibilidade: vetor [1..30] de inteiro
   nome: vetor [1..30] de caractere
   escolhe: caractere
   id: inteiro

Inicio
   i <- 1

   Repita
      LimpaTela
      Escreval("==================================")
      Escreval("    HOSPITAL SANTA AURORA")
      Escreval("==================================")
      Escreval("[1] Cadastrar medico")
      Escreval("[2] Pesquisar medico por ID")
      Escreval("[3] Sair")
      Escreval("==================================")
      Escreva("Escolha uma opcao: ")
      Leia(escolhe)

      Se (escolhe = "1") Entao
      Limpatela

         Repita
            Se (i <= 30) Entao

               Repita
                  Escreval("Especialidade: [1] Pediatra | [2] Clinico | [3] Cirurgiao")
                  Leia(especialidade[i])

                  Se (especialidade[i] <> 1) e (especialidade[i] <> 2) e (especialidade[i] <> 3) Entao
                     Escreval("Digite um numero valido.")
                  FimSe
               Ate (especialidade[i] >= 1) e (especialidade[i] <= 3)

               Repita
                  Escreval("Disponibilidade:")
                  Escreval("[1] Manha | [2] Tarde | [3] Noite")
                  Escreval("[4] Manha e Tarde | [5] Manha e Noite | [6] Tarde e Noite")
                  Leia(disponibilidade[i])

                  Se (disponibilidade[i] < 1) ou (disponibilidade[i] > 6) Entao
                     Escreval("Digite um numero valido.")
                  FimSe
               Ate (disponibilidade[i] >= 1) e (disponibilidade[i] <= 6)

               Escreva("Nome do especialista: ")
               Leia(nome[i])

               LimpaTela
               Escreval("======= FICHA DO MEDICO =======")

               Se (especialidade[i] = 1) Entao
                  Escreval("Especialidade: Pediatra")
               Senao
                  Se (especialidade[i] = 2) Entao
                     Escreval("Especialidade: Clinico Geral")
                  Senao
                     Escreval("Especialidade: Cirurgiao")
                  FimSe
               FimSe

               Se (disponibilidade[i] = 1) Entao
                  Escreval("Turno: Manha")
               Senao
                  Se (disponibilidade[i] = 2) Entao
                     Escreval("Turno: Tarde")
                  Senao
                     Se (disponibilidade[i] = 3) Entao
                        Escreval("Turno: Noite")
                     Senao
                        Se (disponibilidade[i] = 4) Entao
                           Escreval("Turno: Manha e Tarde")
                        Senao
                           Se (disponibilidade[i] = 5) Entao
                              Escreval("Turno: Manha e Noite")
                           Senao
                              Escreval("Turno: Tarde e Noite")
                           FimSe
                        FimSe
                     FimSe
                  FimSe
               FimSe

               Escreval("Nome: ", nome[i])
               Escreval("ID do especialista: ", i)

               i <- i + 1

               Repita
                  Escreval("")
                  Escreval("Realizar um novo cadastro? [S/N]")
                  Leia(escolhe)

                  Se (escolhe <> "S") e (escolhe <> "N") Entao
                     Escreval("Insira S ou N.")
                  FimSe
               Ate (escolhe = "S") ou (escolhe = "N")

            Senao
               Escreval("Limite de 30 medicos atingido.")
               escolhe <- "N"
            FimSe

         Ate (escolhe = "N")

      Senao
   Se (escolhe = "2") Entao

      Repita
         LimpaTela
         Escreval("======= PESQUISA MEDICA POR ID =======")
         Escreva("Insira o ID medico: ")
         Leia(id)

         Se (id >= 1) e (id < i) Entao

            Escreval("======= MEDICO ENCONTRADO =======")
            Escreval("Nome: ", nome[id])
            Escreval("ID: ", id)

            Se (especialidade[id] = 1) Entao
               Escreval("Especialidade: Pediatra")
            Senao
               Se (especialidade[id] = 2) Entao
                  Escreval("Especialidade: Clinico Geral")
               Senao
                  Escreval("Especialidade: Cirurgiao")
               FimSe
            FimSe

            Se (disponibilidade[id] = 1) Entao
               Escreval("Turno: Manha")
            Senao
               Se (disponibilidade[id] = 2) Entao
                  Escreval("Turno: Tarde")
               Senao
                  Se (disponibilidade[id] = 3) Entao
                     Escreval("Turno: Noite")
                  Senao
                     Se (disponibilidade[id] = 4) Entao
                        Escreval("Turno: Manha e Tarde")
                     Senao
                        Se (disponibilidade[id] = 5) Entao
                           Escreval("Turno: Manha e Noite")
                        Senao
                           Escreval("Turno: Tarde e Noite")
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe

         Senao
            Escreval("ID invalido. Medico nao cadastrado.")
         FimSe

         Repita
            Escreval("")
            Escreval("Realizar uma nova pesquisa? [S/N]")
            Leia(escolhe)

            Se (escolhe <> "S") e (escolhe <> "N") Entao
               Escreval("Insira S ou N.")
            FimSe
         Ate (escolhe = "S") ou (escolhe = "N")

      Ate (escolhe = "N")

   Senao
      Se (escolhe <> "3") Entao
         Escreval("Opcao invalida!")
         Escreval("Pressione ENTER para voltar ao menu.")
         Leia(escolhe)
         FimSe
      FimSe
   FimSe

   Ate (escolhe = "3")

   LimpaTela
   Escreval("Sistema encerrado. Obrigado!")

Fimalgoritmo