method between (p: int, r: int) returns (q:int)
    requires r - p > 1
    ensures p < q < r

    {
        q := p +1;
    }

/*
1. What does the program do? What is the precondition? What is the postcon-
dition?

2. What happens if you change the body of the method with q := p + 2? Give
a counterexample.

3. What happens if you change the precondition with r-p>=1? Give a counterex-
ample.
*/

/* 1. Verifica daca r-p > 1, si daca da, returneaza q = p + 1
    Preconditie: r - p > 1
    Postconditie: p < q < r

    2. Daca schimbam q := p + 2, atunci postconditia nu mai este indeplinita, 
    deoarece q nu mai este intre p si r
    contraexemplu este: 
    At "{" (file:///home/manu/Documents/Faculta/Lab%20Inginerie%20Software%28IS%29/DafnyWorkspace/between_inf.dfy:5):
    p:int = -2
    r:int = 0

At "q := p + 2;" (file:///home/manu/Documents/Faculta/Lab%20Inginerie%20Software%28IS%29/DafnyWorkspace/between_inf.dfy:6):
    p:int = -2
    r:int = 0
    defass:bool = true
    q:int = r
    

    3. Daca schimbam preconditia cu r-p>=1, atunci postconditia nu mai este indeplinita. 
    Un contraxemplu este:

    At "{" (file:///home/manu/Documents/Faculta/Lab%20Inginerie%20Software%28IS%29/DafnyWorkspace/between_inf.dfy:5):
    p:int = -1
    r:int = 0

At "q := p +1;" (file:///home/manu/Documents/Faculta/Lab%20Inginerie%20Software%28IS%29/DafnyWorkspace/between_inf.dfy:6):
    p:int = -1
    r:int = 0
    defass:bool = true
    q:int = r


*/