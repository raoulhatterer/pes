import numpy as np  
import matplotlib.pyplot as plt
data= np.loadtxt("FrequencesCardiaquesRepos.csv",delimiter=";")
print("Fréq. max : ", max(data)," bpm")
print("Fréq. min : ", min(data)," bpm")
print("Fréq. moy : %.1f" %np.mean(data)," bpm")
print("Fréq. méd.: %.1f" %np.median(data)," bpm")
print("Ecart-type: %.2f" %np.std(data,ddof =1)," bpm")
plt.hist(data, range=(65, 101), bins=8, color='purple', edgecolor='white')
plt.xlabel('Fréquence cardiaque (bpm)')
plt.ylabel('Effectif')
plt.title('Histogramme des fréquences cardiaques')
plt.show()
