funcprot(0);

CHEMIN = 'C:\Users\CookieV3\Desktop\Simulations numeriques\';
global AFFICHER_HISTO
AFFICHER_HISTO = %t;

function main()
    clc; clf();
    chdir(CHEMIN);
    getd('utils');
    getd('scripts');


//   Partie 1
//   Q1
//    borneA = -1;
//    borneB = 1;
//    Xi = genererRandUniforme(borneA, borneB);
//  Maximum 1000 car la fonction de génération a été manuellement limité à 1000 colonnes (Xi).
//    Yn = centrerReduire(Xi, borneA, borneB, 1000);
    
    
//  Q2
//    lambda=1.1;
//    Xi= genererRandExpo(lambda);
//    Yn = centrerReduireExpo(Xi,1/lambda, 1/(lambda^2), 1000);

//   Partie 2
//   Q1
    n = 100;
    p = 0.03;
    lambda = n*p;
    Xi = genererRandBinomiale(n,p);
    

    if AFFICHER_HISTO then
//        histplot(50,Yn);
//        tracerDensiteNormale(-5, 5)
        tracerDensitePoisson(lambda);
    end
    
endfunction

main()
