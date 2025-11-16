/*Projeto Banco:
Implementar um programa que leia operações bancárias e atualize o saldo de uma
conta, seguindo regras específicas para:
- Depósito
- Saque
- Transferência
- Consulta de saldo
Cada operação possui regras próprias de validação, como:
- valor mínimo e múltiplos permitidos,
- verificação de saldo,
- atualização correta após cada transação.
*/
programa {
  funcao inicio() {
    //Pagina incial:
    inteiro ehCliente, op, conta, linha, coluna
    real valor, bancoDeDados[100][3], cpf, senhaCadastrada, saldo, senha
    logico continuar=verdadeiro

    //inicializando banco de dados
    //até 100 usuários, 3 dados pra cada: cpf, senha, saldo
    para(linha=0;linha<100;linha++){
      para(coluna=0;coluna<3;coluna++){
        bancoDeDados[linha][coluna] = 0
      }
    }
    //sistema funcionando
    faca{
      faca{
      escreva("==============================================\n")
      escreva("|                  UniBank                   |\n")
      escreva("|            1 - Já sou cliente              |\n")
      escreva("|            2 - Quero ser Unibank           |\n")
      escreva("|            0 - Encerrar                    |\n")
      escreva("==============================================\n")
      leia(ehCliente)
      se(ehCliente==1 ou ehCliente==2){
        pare
        }
      senao se(ehCliente==0){
        escreva("==============================================\n")
        escreva("|                A UniBank diz:              |\n")
        escreva("|              Volte Sempre! ;D              |\n")
        escreva("==============================================\n")
        continuar = falso
        pare
        }
      senao{
        escreva("opção inválida!\n")
        }
      }enquanto(verdadeiro) //fim do faca menu

      //Segundo tela, rotas: é cliente ou não
      se(ehCliente==2){ //se não for cliente
        //cadastro do cliente
        escreva("==============================================\n")
        escreva("|            Cadastro UniBank                |\n")
        escreva("|            CPF: ")
        leia(cpf)
        escreva("|          Senha(4 digitos): ")
        leia(senhaCadastrada)
        escreva("|    Valor do Depósito (minimo R$ 10,00): ")
        leia(valor)
        escreva("\n==============================================\n")
        se(valor<10){
          escreva("Falha na criação de conta!")
        }
        senao{
          //adiciona o cliente no banco de dados
          para(linha=0;linha<100;linha++){
            se(bancoDeDados[linha][0] == 0){
              bancoDeDados[linha][0] = cpf
              bancoDeDados[linha][1] = senhaCadastrada
              bancoDeDados[linha][2] = valor //deposito inicial
              conta = linha //linha da matriz de dados (banco de dados)
              pare
            }
          }
          escreva("==============================================\n")
          escreva("|        Cadastro UniBank Finalizado         |\n")
          escreva("|        Número da conta: ", conta) //linha da matriz de dados (banco de dados)
          escreva("\n|        CPF: ", cpf)
          escreva("\n|        Senha: ", senhaCadastrada)
          escreva("\n|        Saldo: R$ ", valor)
          escreva("\n==============================================\n")
        }
      }
      senao se(ehCliente == 1){ //se for cliente
        escreva("\n==============================================\n")
        escreva("|                  UniBank                   |\n")
        escreva("|            Conta: ")
        leia(conta)
        escreva("|            CPF: ")
        leia(cpf) 


        //Terceira tela depende se o usuário acertou senha ou não
        se(bancoDeDados[conta][0] == 0 ou bancoDeDados[conta][0] != cpf){
            escreva("Conta inexistente!\n")
        }
        senao{
            escreva("|          Senha(4 digitos): ")
            leia(senha)
            
            senhaCadastrada = bancoDeDados[conta][1] //senha no banco de dados
            
            //verificação de senha
            enquanto(senha!=senhaCadastrada){ //se senha incorreta
              escreva("senha inválida!\n")
              escreva("Senha: ")
              leia(senha)
            }
            escreva("==============================================\n")
            
            saldo = bancoDeDados[conta][2] //inicializando saldo deste cliente

            faca{
            //Quarta tela - menu - Senha correta
            escreva("\n==============================================\n")
            escreva("|                  UniBank                   |\n")
            escreva("|                1 - Saque                   |\n")
            escreva("|                2 - Deposito                |\n")
            escreva("|                3 - Transferência           |\n")
            escreva("|                4 - Saldo                   |\n")
            escreva("|                0 - Voltar ao menu inicial  |\n")
            escreva("==============================================\n")
            leia(op)

            //Quinta tela depende da transação
            se(op==1){//Saque
              escreva("Valor do Saque: ")
              leia(valor)
              se((valor>=10) e (valor%5==0) e (valor<saldo)){
                saldo -= valor //sacando do saldo
                bancoDeDados[conta][2] = saldo //atualizando saldo do cliente
                escreva("Saque de R$ ", valor, " efetuado com sucesso!\n")
                escreva("Saldo: R$ ", saldo, "\n") // mostrando saldo atual
              }
              senao se(valor>saldo){
                escreva("Saldo insuficiente!\n")
              }
              //Explicações pra cada caso
              senao se(valor<10){
                escreva("O valor mínimo é R$ 10,00\n")
              }
              senao se(valor%5!=0){
                escreva("Só temos notas de R$ 5,00\n")
              }
            }
            
            senao se(op==2){ // Deposito
              escreva("Valor do Depósito: ")
              leia(valor)
              se(valor>0){
                saldo += valor //sacando do saldo
                bancoDeDados[conta][2] = saldo //atualizando saldo do cliente
                escreva("Depósito de R$ ", valor, " efetuado com sucesso!\n")
                escreva("Saldo: R$ ", saldo)
              }
              senao{
                escreva("Depósito inválido!\n")
              }
            }
            senao se(op==3){//transferencia
              escreva("Valor da transferência: ")
              leia(valor)
              se(valor>0 e valor<=saldo){
                saldo -= valor //sacando do saldo
                bancoDeDados[conta][2] = saldo //atualizando saldo do cliente
                escreva("Transferência de R$ ", valor, " efetuado com sucesso!\n")
                escreva("Saldo: R$ ", saldo)
              }
              senao se(valor<0){
                escreva("valor inválido!\n")
              }
              senao se(valor>saldo){
                escreva("Saldo insuficiente!\n")
              }
            }
            senao se(op==4){//saldo
              escreva("Saldo: R$ ", saldo)
            }
            senao se(op==0){ //finaizar sistema
              continuar = verdadeiro
              pare
            }
          }enquanto(verdadeiro) //fim do faça operações
        }
        
      }  
    }enquanto(continuar!=falso) //fim do faça sistema

    //imprimindo banco de dados
    /*escreva("[\n")
    para(linha=0;linha<100;linha++){
      escreva("[")
      para(coluna=0;coluna<3;coluna++){
        escreva(bancoDeDados[linha][coluna], ",")
      }
      escreva("]\n")
    } 
    escreva("]\n")*/
  } // Função inicio
}//Programa
