% Preguntas
aumento_sed(X):-nl,write(X),write(' tiene aumento de sed?[s/n]:') ,read(R), R=s.
vision_borrosa(X):-nl,write(X),write(' tiene vision borrosa?[s/n]:'),read(R), R=s.
llagas_q_no_sanan(X):-nl,write(X),write(' tiene alguna llaga que no le sana?[s/n]:'), read(R), R=s.
perdida_peso(X):-nl,write(X),write(' tiene perdida de peso sin razon? [s/n]: '), read(R),R=s.
insulina(X):-nl,write(X),write(' produce poca insulina?[s/n]: '), read(R),R=s.


% Las Reglas
hipotiroidismo(X):- aumento_sed(X), vision_borrosa(X).
diabete_tipo2(X):- aumento_sed(X), vision_borrosa(X), llagas_q_no_sanan(X), perdida_peso(X), insulina(X).


% El diagnostico
diagnostico(X):-nl, write('Se investiga Hipotiroidismo'),hipotiroidismo(X),
             nl, write(X), write(' tiene sintomas de Hipotiroidismo.'),fail.
diagnostico(X):-nl, write('Se investiga Diabetes'), diabete_tipo2(X),
             nl, write(X),write(' tiene sospecha de Diabetes tipo 2.').
diagnostico(X):-write(' NO SE LOGRO UN DIAGNOSTICO.').