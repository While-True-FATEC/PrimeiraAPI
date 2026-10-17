Algoritmo "Hospital Santa Aurora - Plantao"
//Teste somente com o pediatra do turno manhã.
Var
   i: inteiro
   especialidade: vetor [1..10] de inteiro
   dispo: vetor [1..10] de inteiro
   nome_pediatra_manha: vetor [1..10] de caractere
   escolhaa: caractere

Inicio
   i <- 1
   escolhaa <- "S"

   enquanto (escolhaa = "S") faca

      escreval("Especialidade: [1] Pediatra | [2] Clínico | [3] Cirurgião")
      leia(especialidade[i])

      escreval("Disponibilidade: [1] Manhã | [2] Tarde | [3] Noite")
      leia(dispo[i])

      escreval("Nome do especialista:")

      se (especialidade[i] = 1) entao
         se (dispo[i] = 1) entao
            leia(nome_pediatra_manha[i])
         fimse
      fimse
      
      limpatela
      
      escreval(dispo[i]) //Irei colocar o condicional se para aparecer o nome dos turnos.
      escreval(especialidade[i]) //Isso vale pra esse também.
      escreval(nome_pediatra_manha[i])
      

      escreval("Realizar um novo cadastro? [S/N]")
      leia(escolhaa)

      enquanto (escolhaa <> "S") e (escolhaa <> "N") faca
         escreval("Insira S ou N.")
         leia(escolhaa)
      fimenquanto

      se (escolhaa = "S") entao
         i <- i + 1 //Para o próximo ID.
      senao
         escreval("Cadastro encerrado.") //Em tese, ele volta para o MENU (parte do Paulo).
      fimse

   fimenquanto

Fimalgoritmo