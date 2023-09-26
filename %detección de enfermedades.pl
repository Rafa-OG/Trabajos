%Deteccion de enfernedades

%preposicion

prop(1,'tos cronica',p).
prop(2,'falta de aire',p).
prop(3,'silbados al respirar',p).
prop(4,'tos con sangre',p).
prop(5,'dolor en el pecho',p).
prop(6,'perdida de peso',p).
prop(7,'fatiga',p).

%Proposiciones inferible

prop(101,'EPOC pulmonar',i).
prop(102,'reforzamiento en los pulmones',i).
prop(103,'tumor pulmonar',i).

%reglas
regla(1,y,[1,2,3,7],101,0.3).
regla(2,y,[1,2,4],102,0.7).
regla(3,y,[2,5,6],103,2.0).

