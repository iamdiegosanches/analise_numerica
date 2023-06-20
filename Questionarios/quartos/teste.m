# Fios para chuveiros
# Fio 1: 1.5mm
# Fio 2: 2.5mm
# Fio 3: 16mm

# 2 quartos
# 50 metros de 1.5mm
# 45 metros de 2,5mm
# 8 metros de 16mm

# 3 quartos
# 19 metros de 1.5mm
# 87 metros de 2,5mm
# 7.8 metros de 16mm

# 4 quartos
# 26 metros de 1.5mm
# 42 metros de 2,5mm
# 13 metros de 16mm

# Estoque
# 39.72km de 1.5mm
# 60.72km de 2.5mm
# 9,12km de 16mm

# Matriz
#            1.5mm        2.5mm         16mm  
# 2 quartos   50           45             8   
# 3 quartos   19           87            7.8      
# 4 quartos   26           42             13
# Qtd total  39720        60720         9120
clear
clc


A = [50 19 26;45 87 42;8 7.8 13]
b = [39720;60720;9120]

A\b

x = sol_Cholesky (A, b);
qtd_2_quartos = x(1)
qtd_3_quartos = x(2)
qtd_4_quartos = x(3)