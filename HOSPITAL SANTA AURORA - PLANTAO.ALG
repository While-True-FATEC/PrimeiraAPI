Algoritmo "Hospital Santa Aurora - Plantao"

Var
   qtd_ped_manha, qtd_clinico_manha, qtd_cirurgiao_manha, i: inteiro
   qtd_ped_tarde, qtd_clinico_tarde, qtd_cirurgiao_tarde: inteiro
   qtd_ped_noite, qtd_clinico_noite, qtd_cirurgiao_noite: inteiro
   nome_pediatra: caractere
   id_vetor: vetor [1..50] de caractere

Inicio

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
        leia(nome_pediatra)

        id_vetor[i] <- nome_pediatra
        escreval(id_vetor[i])
        
   fimpara
   

   //Clinicos Gerais do Turno da Manhã

     escreval("Insira a quantidade de Clinicos Gerais que estão disponíveis para o turno da manhã: ")
   leia(qtd_clinico_manha)

   se (qtd_clinico_manha > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Clinicos Gerais!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_manha)

      se (qtd_clinico_manha > 50) entao
         escreval ("Você exedeu o limite máximo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_manha = 1) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_manha)

      se (qtd_clinico_manha = 1) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_manha = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_manha)

      se (qtd_clinico_manha = 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_manha < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_manha)

      se (qtd_clinico_manha < 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_manha >= 2) entao
      escreval("Quantidade de Clinicos Gerais aceita!")
   fimse

   //Cirurgião do Turno da Manhã

   escreval("Insira a quantidade de Cirurgiões que estão disponíveis para o turno da manhã: ")
   leia(qtd_cirurgiao_manha)

   se (qtd_cirurgiao_manha > 50) entao
      escreval ("Quantidade máxima de Cirurgiões ultrapassada. Verifique a quantidade de Cirurgiões!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_manha)

      se (qtd_cirurgiao_manha > 50) entao
         escreval ("Você exedeu o limite máximo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_manha = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_manha)

      se (qtd_cirurgiao_manha = 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_manha < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_manha)

      se (qtd_cirurgiao_manha < 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_manha >= 1) entao
      escreval("Quantidade de Cirurgiões aceita!")
   fimse

   //Turno da Tarde

   //Pediatras do Turno da Tarde

   limpatela
   escreval("Turno da Manhã cadastrado!")
   escreval ("Vamos começar a montar o turno da Tarde")
   escreval("Insira a quantidade de Pediatras que estão disponíveis para o turno da Tarde: ")
   leia(qtd_ped_tarde)

   se (qtd_ped_tarde > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Pediatras!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_tarde)

      se (qtd_ped_tarde > 50) entao
         escreval ("Você exedeu o limite máximo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_tarde = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_tarde)

      se (qtd_ped_tarde = 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_tarde < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_tarde)

      se (qtd_ped_tarde < 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_tarde >= 1) entao
      escreval("Quantidade de Pediatras aceita!")
   fimse

   //Clinicos Gerais do Turno da Tarde

     escreval("Insira a quantidade de Clinicos Gerais que estão disponíveis para o turno da tarde: ")
   leia(qtd_clinico_tarde)

   se (qtd_clinico_tarde > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Clinicos Gerais!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_tarde)

      se (qtd_clinico_tarde > 50) entao
         escreval ("Você exedeu o limite máximo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_tarde = 1) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_tarde)

      se (qtd_clinico_tarde = 1) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_tarde = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_tarde)

      se (qtd_clinico_tarde = 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_tarde < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_tarde)

      se (qtd_clinico_tarde < 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_tarde >= 2) entao
      escreval("Quantidade de Clinicos Gerais aceita!")
   fimse

   //Cirurgião do Turno da Tarde

   escreval("Insira a quantidade de Cirurgiões que estão disponíveis para o turno da manhã: ")
   leia(qtd_cirurgiao_tarde)

   se (qtd_cirurgiao_tarde > 50) entao
      escreval ("Quantidade máxima de Cirurgiões ultrapassada. Verifique a quantidade de Cirurgiões!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_tarde)

      se (qtd_cirurgiao_tarde > 50) entao
         escreval ("Você exedeu o limite máximo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_tarde = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_tarde)

      se (qtd_cirurgiao_tarde = 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_tarde < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_tarde)

      se (qtd_cirurgiao_tarde < 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_tarde >= 1) entao
      escreval("Quantidade de Cirurgiões aceita!")
   fimse

   //Turno da Noite

   //Pediatras do turno da Noite

   limpatela
   escreval("Turno da Manhã e o Turno da Tarde cadastrado!")
   escreval ("Vamos começar a montar o turno da Noite")
   escreval("Insira a quantidade de Pediatras que estão disponíveis para o turno da noite: ")
   leia(qtd_ped_noite)

   se (qtd_ped_noite > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Pediatras!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_noite)

      se (qtd_ped_noite > 50) entao
         escreval ("Você exedeu o limite máximo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_noite = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_noite)

      se (qtd_ped_noite = 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_noite < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped_noite)

      se (qtd_ped_noite < 0) entao
         escreval ("Você não atingiu o número mínimo de Pediatras!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_ped_noite >= 1) entao
      escreval("Quantidade de Pediatras aceita!")
   fimse

   //Clinicos Gerais do Turno da Noite

     escreval("Insira a quantidade de Clinicos Gerais que estão disponíveis para o turno da noite: ")
   leia(qtd_clinico_noite)

   se (qtd_clinico_noite > 50) entao
      escreval ("Quantidade máxima de Pediatras ultrapassada. Verifique a quantidade de Clinicos Gerais!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_noite)

      se (qtd_clinico_noite > 50) entao
         escreval ("Você exedeu o limite máximo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_noite = 1) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_noite)

      se (qtd_clinico_noite = 1) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_noite = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 2]. Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_noite)

      se (qtd_clinico_noite = 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_noite < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico_noite)

      se (qtd_clinico_noite < 0) entao
         escreval ("Você não atingiu o número mínimo de Clinicos Gerais!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_clinico_noite >= 2) entao
      escreval("Quantidade de Clinicos Gerais aceita!")
   fimse

   //Cirurgião do Turno da Noite

   escreval("Insira a quantidade de Cirurgiões que estão disponíveis para o turno da noite: ")
   leia(qtd_cirurgiao_noite)

   se (qtd_cirurgiao_noite > 50) entao
      escreval ("Quantidade máxima de Cirurgiões ultrapassada. Verifique a quantidade de Cirurgiões!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_noite)

      se (qtd_cirurgiao_noite > 50) entao
         escreval ("Você exedeu o limite máximo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_noite = 0) entao
      escreval("Cobertura mínima não atingida. [Mínimo 1]. Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_noite)

      se (qtd_cirurgiao_noite = 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse

   fimse

   se (qtd_cirurgiao_noite < 0) entao
      escreval ("Quantidade negativa inserida não permitida!")
      escreval("Insira novamente a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao_noite)

      se (qtd_cirurgiao_noite < 0) entao
         escreval ("Você não atingiu o número mínimo de Cirurgiões!")
         fimalgoritmo
      fimse
   fimse

   se (qtd_cirurgiao_noite >= 1) entao
      escreval("Quantidade de Cirurgiões aceita!")
   fimse

Fimalgoritmo