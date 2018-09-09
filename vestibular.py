# -*- coding: utf-8 -*-
"""
@author: LenitoRibeiro
"""
import pandas as pd

dados = pd.read_csv('baseVestibularTratada.csv', header = None)

del dados[1]
del dados[6]
del dados[7]
del dados[13]
del dados[14]
del dados[15]
del dados[2]

transacoes = []
for i in range(0, 1306):
    transacoes.append([str(dados.values[i, j]) for j in range(0, dados.shape[1])])

from apyori import apriori
regras = apriori(
                 transacoes, 
                 min_support = 0.1, #padrao precisa acontecer em 25% dos casos
                 min_confidence = 0.4, 
                 min_lift = 2, 
                 min_lenght = 2
                 )
resultados = list(regras)

resultados

resultados2 = [list(x) for x in resultados]
resultados2
resultadoFormatado = []
for j in range(0, 10):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado

