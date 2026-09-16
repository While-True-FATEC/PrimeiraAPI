Algoritmo "Hospital Santa Aurora - Plantao"

Var
   pediatra, clinico_geral, cirurgiao: caractere
   qtd_ped, qtd_clinico, qtd_cirurgiao: inteiro

Inicio

   escreval("Insira a quantidade de Pediatras disponíveis: ")
   leia(qtd_ped)
   //Camila: Adicionei a regra de erro de quantidade absurda (50+)
   //por profissional ao invés de todo o plantão
   se qtd_ped > 50 entao
      Escreval("Limite de Pediatra ultrapassou 50 médicos. Verifique novamente a escala")
   fimse

   escreval("Insira a quantidade de Clinicos Gerais disponíveis: ")
   leia(qtd_clinico)

   se qtd_clinico > 50 entao
      Escreval("Limite de Clínico Geral ultrapassou 50 médicos. Verifique novamente a escala")
   fimse

   escreval("Insira a quantidade de Cirurgiões disponíveis: ")
   leia(qtd_cirurgiao)

   se qtd_cirurgiao > 50 entao
      Escreval("Limite de Cirurgião ultrapassou 50 médicos. Verifique novamente a escala")
   fimse

Fimalgoritmo