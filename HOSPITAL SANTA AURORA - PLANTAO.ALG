Algoritmo "Hospital Santa Aurora - Plantao"

Var
   i: inteiro
   especialidade: vetor [1..10] de inteiro
   disponibilidade: vetor [1..10] de inteiro
   nome: vetor [1..10] de caractere
   escolhe: caractere

Inicio
   i <- 1
   escolhe <- "S"

   enquanto (escolhe = "S") faca
      repita
         escreval("Especialidade: [1] Pediatra | [2] Clínico | [3] Cirurgião")
         leia(especialidade[i])
         se (especialidade[i] <> 1) e (especialidade[i] <> 2) e (especialidade[i] <> 3) entao
              escreval("Digite um número válido.")
         fimse
      ate (especialidade[i] = 1) ou (especialidade[i] = 2) ou (especialidade[i] = 3)

      escreval("")
      
      repita
         escreval("Disponibilidade: [1] Manhã | [2] Tarde | [3] Noite | [4] Manhã e Tarde | [5] Manhã e Noite | [6] Tarde e Noite")
         leia(disponibilidade[i])
         se(disponibilidade[i] <> 1) e (disponibilidade[i] <> 2) e (disponibilidade[i] <> 3) e (disponibilidade[i] <> 4) e (disponibilidade[i] <> 5) e (disponibilidade[i] <> 6) entao
              escreval("Digite um número válido.")
         fimse
      ate (disponibilidade[i] = 1) ou (disponibilidade[i] = 2) (disponibilidade[i] = 3) ou (disponibilidade[i] = 4) (disponibilidade[i] = 5) ou (disponibilidade[i] = 6)

      escreval("")

      escreval("Nome do especialista:")
      leia(nome[i]) //Eu entendi o porquê o vetor que eu criei anteriormente é fútil (o ID já fazia o trabalho dele pra dar match com outros).

      limpatela

      escreval("===========================")
      escreval("      FICHA DO MÉDICO      ")
      escreval("===========================")
      se(especialidade[i] = 1) entao
         escreval("Especialidade: Pediatra")
      fimse
      se(especialidade[i] = 2) entao
         escreval("Especialidade: Clínico Geral")
      fimse
      se(especialidade[i] = 3) entao
         escreval("Especialidade: Cirurgião")
      fimse

      se(disponibilidade[i] = 1) entao
         escreval("Turno: Manhã")
      fimse
      se(disponibilidade[i] = 2) entao
         escreval("Turno: Tarde")
      fimse
      se(disponibilidade[i] = 3) entao
         escreval("Turno: Noite")
      fimse
      se(disponibilidade[i] = 4) entao
         escreval("Turno: Manhã e Tarde")
      fimse
      se(disponibilidade[i] = 5) entao
         escreval("Turno: Manhã e Noite")
      fimse
      se(disponibilidade[i] = 6) entao
         escreval("Turno: Tarde e Noite")
      fimse

      escreval("Nome do Especialista: ", nome[i])

      escreval("ID do Especialista: ", i)

      escreval("")

      escreval("Realizar um novo cadastro? [S/N]")
      leia(escolhe)

      enquanto (escolhe <> "S") e (escolhe <> "N") faca
         escreval("Insira S ou N.")
         leia(escolhe)
      fimenquanto

      se (escolhe = "S") entao
         i <- i + 1 //Para o próximo ID.
      senao
         escreval("Cadastro encerrado.") //Em tese, ele volta para o MENU (parte do Paulo).
      fimse

   fimenquanto

Fimalgoritmo