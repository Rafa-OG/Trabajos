%preposiciones

prop(1,'viento>=74',p).
prop(2,'viento<96',p).
prop(3,'viento>=96',p).
prop(4,'viento<111',p).
prop(5,'viento>=111',p).

%proposiciones inferibles
prop(10,'depresionTropical',i).
prop(20,'tormentaTropical',i).
prop(30,'huracan',i).

%Clases
clase(1,clasificacion_ciclon,[10,20,30]).

%Reglas
regla(1,y,[1,2],10,0.8).
regla(2,y,[3,4],20,0.8).
regla(3,y,5,30,1.0).
