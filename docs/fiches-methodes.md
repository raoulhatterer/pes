# Fiches méthode


## Arduino
- [**fm1**{: .stabilo-vert} Découvrir la carte Arduino](data/p244 Arduino.png){:target="_blank"}
- [**fm1**{: .stabilo-vert} Programmer la carte Arduino](data/p245 Arduino.png){:target="_blank"}
- [**fm1**{: .stabilo-vert} Utiliser une carte Arduino comme une console d'acquisition](data/p246 Arduino.png){:target="_blank"}
- [**fm1**{: .stabilo-vert} Associer des modules électroniques à la carte Arduino](data/p247 Arduino.png){:target="_blank"}

## Expérimentation assistée par ordinateur (ExAO)
- [**fm2**{: .stabilo-vert} ExAO1](data/p248 EXAO.png){:target="_blank"}
- [**fm2**{: .stabilo-vert} ExAO2](data/p249 EXAO.png){:target="_blank"}


## Tableur
- [**fm3**{: .stabilo-vert} Formules](data/p250 Tableur.png){:target="_blank"}
- [**fm3**{: .stabilo-vert} Graphiques](data/p251 Tableur.png){:target="_blank"}


## Python
- [**fm4**{: .stabilo-vert} Python1](data/p252 Python.png){:target="_blank"}
- [**fm4**{: .stabilo-vert} Python2](data/p253 Python.png){:target="_blank"}
- [**csv**{: .stabilo-vert} FrequencesCardiaquesRepos.csv](data/FrequencesCardiaquesRepos.csv){:target="_blank"}

??? note "Solution"
    ```python
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
    ```

## Maths
- [**fm1**{: .stabilo-vert} Reconnaître une situation de proportionnalité](data/p254 maths.png){:target="_blank"}
- [**fm1**{: .stabilo-vert} Pourcentages](data/p255 maths.png){:target="_blank"}
- [**fm2**{: .stabilo-vert} Géométrie 1](data/p256 maths.png){:target="_blank"}
- [**fm2**{: .stabilo-vert} Géométrie 2](data/p257 maths.png){:target="_blank"}
- [**fm3**{: .stabilo-vert} Représentation de données 1](data/p258 maths.png){:target="_blank"}
- [**fm3**{: .stabilo-vert} Représentation de données 2](data/p259 maths.png){:target="_blank"}
- [**fm4**{: .stabilo-vert} Statistiques](data/p260 maths.png){:target="_blank"}


