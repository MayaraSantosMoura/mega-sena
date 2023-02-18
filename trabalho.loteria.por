programa
{
	inclua biblioteca Util --> u

	inteiro listaSorteados[100]
	
	funcao inicio()
	{
		menu()
		
	}
	
	funcao vazio menu()
	{
		inteiro opcao = 0

		escreva("escolha um numero: \n")
		escreva("____________________\n")
		escreva("1 ---------> Mega sena\n")
		escreva("2 ---------> Lotofacil\n")
		escreva("3 ---------> Lotomania\n")
		escreva("4 ---------> Quina\n")
		escreva("_____________________\n")
		leia(opcao)

		escolha(opcao){

			caso 1: mega_sena()
			pare

			caso 2: lotofacil()
			pare

			caso 3: lotomania()
			pare

			caso 4: quina()
			pare


			
		}
	}
	
	 funcao mega_sena(){

	 	const real PRECOS[15] = { 4.50, 31.50, 126.0, 378.0, 945.0, 2079.0, 4158.0, 7722.0, 13513.50, 22522.50, 36036.0, 55692.0, 83538.0, 122094.0, 174420.0 } //tem outros valores
	 	
		inteiro qntdDezenas = 0
		inteiro qntdApostas = 0
		const inteiro MAX = 60

		inteiro minDezenas = 6
		inteiro maxDezenas = 20

	 	escreva("quantas apostas voce quer fazer? ")
	 	leia(qntdApostas)

	 	escreva("quantos numeros voce quer sortear? ")
	 	leia(qntdDezenas)

	 	enquanto (qntdDezenas < 6 ou qntdDezenas > 20){
	 		escreva("valor invalido, informe outro valor ")
	 		leia(qntdDezenas)
	 	}
	 	para(inteiro i=0; i < qntdApostas; i++){
	 		escreva("\n \n sorteio numero: ", i+1)
	 		sorteiaDezenas(qntdDezenas, qntdApostas, MAX)

		escreva("voce deve pagar: ", qntdApostas * PRECOS[qntdDezenas])

	}
}
	
	

	funcao lotofacil(){
		const real PRECOS[15] = { 4.50, 31.50, 126.0, 378.0, 945.0, 2079.0, 4158.0, 7722.0, 13513.50, 22522.50, 36036.0, 55692.0, 83538.0, 122094.0, 174420.0 }
		
		inteiro qntdDezenas = 0
		inteiro qntdApostas = 0
		const inteiro MAX = 99

		inteiro minDezenas = 15
		inteiro maxDezenas = 20

	 	escreva("quantas apostas voce quer fazer? ")
	 	leia(qntdApostas)

	 	escreva("quantos numeros voce quer sortear? ")
	 	leia(qntdDezenas)

	 	  enquanto (qntdDezenas < 15 ou qntdDezenas > 20){
	 		escreva("valor invalido, informe outro valor ")
	 		leia(qntdDezenas)
	 	}

	 	para(inteiro i=0; i < qntdApostas; i++){
	 		escreva("\n \n sorteio numero: ", i+1)
	 		sorteiaDezenas(qntdDezenas, qntdApostas, MAX)
	 	}

		escreva("voce deve pagar: ", qntdApostas * PRECOS[qntdDezenas])

	
	}
	

	funcao lotomania(){
		const real PRECOS[15] = { 4.50, 31.50, 126.0, 378.0, 945.0, 2079.0, 4158.0, 7722.0, 13513.50, 22522.50, 36036.0, 55692.0, 83538.0, 122094.0, 174420.0 }
		
		inteiro qntdDezenas = 0
		inteiro qntdApostas = 0
		const inteiro MAX = 100

		inteiro minDezenas = 50
		inteiro maxDezenas = 100

	 	escreva("quantas apostas voce quer fazer? ")
	 	leia(qntdApostas)

	 	escreva("quantos numeros voce quer sortear? ")
	 	leia(qntdDezenas)

	 	   enquanto (qntdDezenas != 50){
	 		escreva("valor invalido, informe outro valor ")
	 		leia(qntdDezenas)
	 	}

	 	para(inteiro i=0; i < qntdApostas; i++){
	 		escreva("\n \n sorteio numero: ", i+1)
	 		sorteiaDezenas(qntdDezenas, qntdApostas, MAX)
	 		
		}
	 	escreva("voce deve pagar: ", qntdApostas * PRECOS[qntdDezenas])
	 	
	}

	funcao quina(){
		const real PRECOS[15] = { 4.50, 31.50, 126.0, 378.0, 945.0, 2079.0, 4158.0, 7722.0, 13513.50, 22522.50, 36036.0, 55692.0, 83538.0, 122094.0, 174420.0 }
		
		inteiro qntdDezenas = 0
		inteiro qntdApostas = 0
		const inteiro MAX = 80
		
		inteiro minDezenas = 50
		inteiro maxDezenas = 100

	 	escreva("quantas apostas voce quer fazer?: ")
	 	leia(qntdApostas)
	 	
	 	escreva("quantos numeros voce quer sortear?: ")
	 	leia(qntdDezenas)
          sorteiaDezenas(qntdDezenas, qntdApostas, MAX)

	 	   enquanto (qntdDezenas < 6 ou qntdDezenas > 20){
	 		escreva("valor invalido, informe outro valor ")
	 		leia(qntdDezenas)
	 	}

	 	para(inteiro i=0; i < qntdApostas; i++){
	 		escreva("\n \n sorteio numero: ", i+1)
	 		sorteiaDezenas(qntdDezenas, qntdApostas, MAX)
	 	}

	 	escreva("voce deve pagar: ", qntdApostas * PRECOS[qntdDezenas])


	 	//custo = qntdApostas * 
	 	

	}


	 funcao sorteiaDezenas(inteiro qntdDezenas, inteiro qntdApostas, inteiro max){

		inteiro sorteado    = 0
		logico estaRepetido = falso

		para(inteiro i=0; i < qntdApostas; i++){	

			escreva("\n\nsorteio ", i+1, "\n")
		
			para(inteiro j=0; j < qntdDezenas; j++ ){

				estaRepetido = falso

				sorteado = sorteia(1, max)

				//percorrer a lista e verificar se o numero sorteado já existe nela
				para(inteiro k=0; k < qntdDezenas; k++){
					se(listaSorteados[k] == sorteado){
						estaRepetido = verdadeiro
					}
				}

				se(estaRepetido == falso){					
					listaSorteados[j] = sorteado
				} senao{
					j--
				}
			}

			
			ordenarLista(qntdDezenas)
			mostra(qntdDezenas)

			escreva("\n")
		}
	}

	funcao mostra(inteiro qntdDezenas){
		
		para(inteiro i=0; i < qntdDezenas; i++){

			escreva(listaSorteados[i], "-")

		}
	}
	    
	
	funcao ordenarLista(inteiro qntdDezenas){

		inteiro aux

		 para(inteiro j=0; j < qntdDezenas - 1; j++){

			para(inteiro i=0; i < qntdDezenas - 1 - j; i++){
				se(listaSorteados[i] > listaSorteados[i+1]){
					aux = listaSorteados[i]
					listaSorteados[i] = listaSorteados[i+1]
					listaSorteados[i+1] = aux
				}
			}

		}
	}
     
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3850; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */