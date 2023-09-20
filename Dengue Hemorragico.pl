% Preguntas
malestar(X):-nl,write(X),write(' tiene malestar?[s/n]:') ,read(R), R=s.
fiebre(X):-nl,write(X),write(' tiene fiebre?[s/n]:'),read(R), R=s.
dolor_art_mus(X):-nl,write(X),
    write(' tiene dolor muscular o en articulaciones?[s/n]: '), read(R),R=s.
rash(X):-nl,write(X),write(' tiene rash [s/n]: '), read(R),R=s.
hemorragia(X):-nl,write(' tiene hemorragia [s/n]: '), read(R),R=s.

% Las Reglas
dengue(X):- malestar(X), fiebre(X), rash(X), dolor_art_mus(pepe).
dengue_hemorragico(X):- malestar(X), fiebre(X), dolor_art_mus(pepe), rash(X), hemorragia(X).


% El diagnostico
diagnostico(X):-nl, write('Se investiga DENGUE'),dengue(X),
             nl, write(X), write(' tiene sintomas de DENGUE.'),fail.
diagnostico(X):-nl, write('Se investiga DENGUE HEMORRAGICO'), dengue_hemorragico(X),
             nl, write(X),write(' tiene sospecha de DENGUE HEMORRAGICO.').
diagnostico(X):-write(' NO SE LOGRO UN DIAGNOSTICO.').
