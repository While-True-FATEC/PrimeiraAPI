Algoritmo "Hospital Santa Aurora - Plantao"

Var
   qtd_ped_manha, qtd_clinico_manha, qtd_cirurgiao_manha, i, cont: inteiro
   qtd_ped_tarde, qtd_clinico_tarde, qtd_cirurgiao_tarde: inteiro
   qtd_ped_noite, qtd_clinico_noite, qtd_cirurgiao_noite: inteiro
   nome_pediatra: vetor [1..33] de caractere
   nome_cirurgiao: vetor [1..33] de caractere
   nome_clinico: vetor [1..33] de caractere
   disponibilidade: logico


Inicio
   cont <- 0
   escreval ("Olá seja Bem-vindo a MeDshift")
   escreval ("Vamos começar a montar o plantão pelo turno da Manhã")

   //Pediatras do Turno da Manhã

   escreval("Insira a quantidade de Pediatras que estão disponíveis para o turno da manhã: ")
   leia(qtd_ped_manha)

   se (qtd_ped_manha > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Pediatras!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_manha)

      se (qtd_ped_manha > 50) entao
         escreval ("Você exedeu o limite máximo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_manha = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_manha)

      se (qtd_ped_manha = 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_manha < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_manha)

      se (qtd_ped_manha < 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_manha >= 1) entao
      escreval("Quantidade de Pediatras aceita!")
   fimse
   // Nome dos pediatras + ID
   para i de 1 ate qtd_ped_manha faca
        escreval("Insira o nome dos pediatras.")
        leia(nome_pediatra[i])

        escreval(nome_pediatra[i])
        cont <- cont+1
   fimpara
   se (cont > qtd_ped_manha) entao
      escreval("tarde")
   fimse
   
  fimalgoritmo