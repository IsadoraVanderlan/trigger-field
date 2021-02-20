#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'
/*
=========================================================================================================
Programa....: GATIL1
Autor.......: Isadora Vanderlan
Data........: 10/01/2021
Descricao ..: Incluir porcentagem no valor do campo com codiçoes específicas 
=========================================================================================================
*/

User Function GATIL1()

Local cVal 

    If M->E1_TIPO="DP" .AND. M->E1_CLIENTE="01" .AND. M->E1_LOJA="01"
        cVal:= M->E1_VALOR*1.1 // Caso a codição seja verdadeira incluir 10% ao valor do campo

        Else
        cVal:= M->E1_VALOR // Caso a codição seja falsa deixar somente o valor digitado 
    End If        

Return (cVal)
