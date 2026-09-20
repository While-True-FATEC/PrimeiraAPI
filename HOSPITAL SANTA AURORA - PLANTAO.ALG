Algoritmo "Hospital Santa Aurora - Plantao"

Var
   decisao: caractere
   qtd_ped, qtd_clinico, qtd_cirurgiao: inteiro

Inicio

   escreval ("Você pode criar os plantões dos seguintes turnos:")
   escreval (" 1 -> manhã, 2 -> tarde, 3 -> noite")
   escreva ("Digite o numero do plantão que deseja criar: ")
   leia (decisao)


   // Turno da Manhã


   se (decisao = "1") entao

      limpatela
      escreval("Você escolheu o turno da Manhã!")
      escreval("Insira a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped)

      se (qtd_ped < 1) e (qtd_ped = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_ped < 0) entao
         escreval ("Quantidade negativa inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico)

      se (qtd_clinico < 2) entao
         escreval("Cobertura mínima não atingida. [Mínimo 2]")
      fimse

      se (qtd_clinico < 0) entao
         escreval ("Quantidade negativa inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao)

      se (qtd_cirurgiao < 1) e (qtd_cirurgiao = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_cirurgiao < 0) entao
         escreval ("Quantidade negativa inserida nao permitida")
      fimse

   fimse


   // Turno da Tarde


   se (decisao = "2") entao

      limpatela
      escreval("Você escolheu o turno da Tarde!")
      escreval("Insira a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped)

      se (qtd_ped < 1) e (qtd_ped = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_ped < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico)

      se (qtd_clinico < 2) entao
         escreval("Cobertura mínima não atingida. [Mínimo 2]")
      fimse

      se (qtd_clinico < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao)

      se (qtd_cirurgiao < 1) e (qtd_cirurgiao = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_cirurgiao < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

   fimse


   // Turno da Noite


   se (decisao = "3") entao

      limpatela
      escreval("Você escolheu o turno da Noite!")
      escreval("Insira a quantidade de Pediatras disponíveis: ")
      leia(qtd_ped)

      se (qtd_ped < 1) e (qtd_ped = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_ped < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Clinicos Gerais disponíveis: ")
      leia(qtd_clinico)

      se (qtd_clinico < 2) entao
         escreval("Cobertura mínima não atingida. [Mínimo 2]")
      fimse

      se (qtd_clinico < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

      escreval("Insira a quantidade de Cirurgiões disponíveis: ")
      leia(qtd_cirurgiao)

      se (qtd_cirurgiao < 1) e (qtd_cirurgiao = 0) entao
         escreval("Cobertura mínima não atingida. [Mínimo 1]")
      fimse

      se (qtd_cirurgiao < 0) entao
         escreval ("Quantidade inserida nao permitida")
      fimse

   fimse

   //Turno Não Idendificado

   se (decisao >= "4") entao
      escreval("Turno não identificado!")
   fimse


Fimalgoritmo