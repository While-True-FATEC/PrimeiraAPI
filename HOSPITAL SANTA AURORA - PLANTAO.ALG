Algoritmo "Hospital Santa Aurora - Plantao"

Var
   pediatra, clinico_geral, cirurgiao: caractere
   qtd_ped, qtd_clinico, qtd_cirurgiao, qtd_total: inteiro

Inicio

   escreval("Insira a quantidade de Pediatras disponíveis: ")
   leia(qtd_ped)

   escreval("Insira a quantidade de Clinicos Gerais disponíveis: ")
   leia(qtd_clinico)

   escreval("Insira a quantidade de Cirurgiões disponíveis: ")
   leia(qtd_cirurgiao)


   //Camila: mensagem de erro ao ultrapassar 50 profissionais
   qtd_total <- qtd_ped + qtd_clinico + qtd_cirurgiao
   se qtd_total > 50 entao
      Escreval("Limite de profissionais ultrapassou 50 médicos no plantão. Verifique novamente a escala")
   fimse
   limpatela


Fimalgoritmo