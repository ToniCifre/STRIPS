(define (domain puzzle8)
    (:requirements :strips :equality :typing)
    (:types TCASELLA TNUMERO)
    (:predicates
		(EstaPlena ?numero - TNUMERO ?casella - TCASELLA)
		(EstaBuida ?casella - TCASELLA)
		(Veina ?casella ?casella - TCASELLA)
    )
	(:action Moure
        :parameters (?numero - TNUMERO ?deCasella ?aCasella - TCASELLA)
        :precondition (and 
							(EstaBuida ?aCasella) 
							(EstaPlena ?numero ?deCasella) 
							(or 
								(Veina ?aCasella ?deCasella)
								(Veina ?deCasella ?aCasella)
							) 
					)
        :effect (and 
            (EstaBuida ?deCasella)			
            (EstaPlena ?numero ?aCasella)
			(not (EstaPlena ?numero ?deCasella))
			(not (EstaBuida ?aCasella))
         )
    )
)