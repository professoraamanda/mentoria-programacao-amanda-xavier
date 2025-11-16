/*Ingresso de cinema - Planejamento da Solução:
1) Ler o dia da semana
2) Ler a hora de inicio da sessão
3) Ler minutos do inicio da sessão
4) Ler o tipo de cliente (estudante ou não)
5) Ler o método de pagamento (Credito ou Debito)
6) Verificar turno pela hora e minuto: Vespertino ou Noturno
7) Verificar o dia da semana e definir valor
7.1) Verificar se há desconto: 
7.2) Se estudante, aplica 50% no valor e imprimir ingresso
7.3) Caso contrario, verificar forma de pagamento:
7.4)se cartão de credito desconto de acordo com dia
8) Caso Contrario repetir passos de 7 para noturno
 */
programa {
  funcao inicio() {
    inteiro diaDaSemana, hora, minutos, dia, turno
    caracter estudante, pagamento
    real valor
    //Entrada de dados
    //7 dias e 2 turnos
    real valorTabelado[7][2] = {{30,30},
                                {15,20},
                                {15,20},
                                {15,30},
                                {20,30},
                                {20,40},
                                {30,40}}
    real descontos[7][2] = {{30,30},
                            {50,50},
                            {50,50},
                            {50,50},
                            {50,50},
                            {50,30},
                            {20,20}}
    
    leia(diaDaSemana, hora,minutos, estudante, pagamento)

    //Processamento - Regra
    se((hora>18) ou (hora==18 e minutos>=30)){
      turno = 1
    }
    senao{
      turno = 0
      }
    para(dia=0;dia<7;dia++){
      se(estudante=='S'){
        escolha(diaDaSemana){
          caso 1:
            valor = valorTabelado[0][turno]/2
            pare
          caso 2:
            valor = valorTabelado[1][turno]/2
            pare
          caso 3:
            valor = valorTabelado[2][turno]/2
            pare
          caso 4:
            valor = valorTabelado[3][turno]/2
            pare
          caso 5:
            valor = valorTabelado[4][turno]/2
            pare
          caso 6:
            valor = valorTabelado[5][turno]/2
            pare
          caso 7:
            valor = valorTabelado[6][turno]/2
            pare
          caso contrario:
            escreva("\n")        
        } 
      }
      senao se(pagamento=='C'){
        escolha(diaDaSemana){
          caso 1:
            valor = valorTabelado[0][turno]*(1-(descontos[0][turno]/100))
            pare
          caso 2:
            valor = valorTabelado[1][turno]*(1-(descontos[1][turno]/100))
            pare
          caso 3:
            valor = valorTabelado[2][turno]*(1-(descontos[2][turno]/100))
            pare
          caso 4:
            valor = valorTabelado[3][turno]*(1-(descontos[3][turno]/100))
            pare
          caso 5:
            valor = valorTabelado[4][turno]*(1-(descontos[4][turno]/100))
            pare
          caso 6:
            valor = valorTabelado[5][turno]*(1-(descontos[5][turno]/100))
            pare
          caso 7:
            valor = valorTabelado[6][turno]*(1-(descontos[6][turno]/100))
            pare
          caso contrario:
            escreva("\n")        
        } 
      }
      senao{
        escolha(diaDaSemana){
          caso 1:
            valor = valorTabelado[0][turno]
            pare
          caso 2:
            valor = valorTabelado[1][turno]
            pare
          caso 3:
            valor = valorTabelado[2][turno]
            pare
          caso 4:
            valor = valorTabelado[3][turno]
            pare
          caso 5:
            valor = valorTabelado[4][turno]
            pare
          caso 6:
            valor = valorTabelado[5][turno]
            pare
          caso 7:
            valor = valorTabelado[6][turno]
            pare
          caso contrario:
            escreva("\n")        
        } 
      }      
    }
    //saída
    escreva("Valor do ingresso: R$ ", valor)
  }
}

