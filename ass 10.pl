tohp(1,BEG,TAR):- write('Move disk from'),write(BEG),write(TAR),nl.
tohp(N,BEG,CEN,TAR):- N>1,M is N-1, tohp(M,BEG,CEN,TAR),tohp(1,BEG,TAR,_),tohp(M,CEN,TAR,BEG).