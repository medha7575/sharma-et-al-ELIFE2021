# Combined-Interaction-Model
This file contains the combined dual material model with Arp 2/3 Actin and Actomyosin interactions corresponding 
to my paper-"Emergence of a smooth interface from growth of a dendritic network against a mechanosensitive contractile material".

This model is similar to the previous individual material models -"Actomyosin-only model" and "Actin-only model" that can be found at https://github.com/medha7575/sharma-et-al-ELIFE2021/

This model uses unique interaction rules designed to mimic the 'in vivo' interaction of actomyosin and Arp 2/3 actin. 
It has 6 different files dividing the different functionalities in smaller sections, but to run the simulation only two files needs to be run: 
1. SetUp_Initiate: the initiation file, which calls all the initiation functionalities to set up the simulation enviornmenet and
2. Simulate_CombinedModel: which runs the simulation and calls the respective functionalities to calculate forces and update the actin nodes.

