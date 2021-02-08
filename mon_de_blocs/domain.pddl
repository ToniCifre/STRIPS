(define (domain apilador)
    (:requirements :strips :equality :adl
    )
    (:predicates
        (Sobre ?sobre ?sota)
        (AlTerra ?blocT)
        (MaBuida)
        (Agafat ?blocA)
        (Lliure ?blocL)
    )
(:action AgafarDeSobre
        :parameters (?bloc ?sota)
        :precondition (and (Lliure ?bloc) (MaBuida) (Sobre ?bloc ?sota) )
        :effect (and 
            (Agafat ?bloc) 
            (not (Lliure ?bloc))
            (not (MaBuida)) 
            (not (Sobre ?bloc ?sota))
            (Lliure ?sota)
        )
    )
(:action AgafarDeTerra
        :parameters (?bloc)
        :precondition (and (Lliure ?bloc) (MaBuida) (AlTerra ?bloc ) )
        :effect (and 
            (not (AlTerra ?bloc))
            (Agafat ?bloc) 
            (not (Lliure ?bloc))
            (not (MaBuida)) 
        )
    )
    
(:action MoreATerra
        :parameters (?bloc)
        :precondition  (Agafat ?bloc)
        :effect (and
                    (not (Agafat ?bloc))
                    (AlTerra ?bloc)
                    (Lliure ?bloc)
                    (MaBuida)
                )
        
    )    
(:action MoreASobre
        :parameters (?bloc ?desti)
        :precondition (and
                (Agafat ?bloc)
                (Lliure ?desti)
            )
        :effect (and
                    (not (Lliure ?desti))
                    (not (Agafat ?bloc))
                    (Sobre ?bloc ?desti)
                    (Lliure ?bloc)
                    (MaBuida)
                )
                        
    )    
)