/*
# Projeto: Ingresso de Cinema
Enunciado resumido:
Calcular o valor final do ingresso com base em:
- dia da semana (1–7)
- horário da sessão
- estudante (S/N)
- forma de pagamento (D/C)
- aplicação de tabela de preços e descontos
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
      escolha(diaDaSemana){
        caso 1:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 2:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 3:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 4:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 5:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 6:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso 7:
          se(estudante=='S'){
            valor = valorTabelado[diaDaSemana-1][turno]/2
          }
          senao se(pagamento=='C'){
            valor = valorTabelado[diaDaSemana-1][turno]*(1-(descontos[diaDaSemana-1][turno]/100))
          }
          senao{
            valor = valorTabelado[diaDaSemana-1][turno]
          }
          pare
        caso contrario:
          escreva("\n")        
      } 
    }
    //saída
    escreva("Valor do ingresso: R$ ", valor)
  }
}
