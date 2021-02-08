﻿(define (problem apiladorOne)
    (:domain apilador)
    (:objects BlocA BlocB BlocC)
    (:init 
            (AlTerra BlocB)
            (AlTerra BlocC)
            (Sobre BlocA BlocB) 
            (MaBuida)
            (Lliure BlocA)
            (Lliure BlocC)
    )    
    (:goal 
        (and  
            (Sobre BlocC BlocB) 
            (Sobre BlocB BlocA)
            (AlTerra BlocA)
            (Lliure BlocC) 
        )
    )
)   