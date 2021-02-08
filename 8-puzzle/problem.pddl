(define (problem puzzle8_1)
    (:domain puzzle8)
    (:objects 
        C0x0 C0x1 C0x2 C1x0 C1X1 C1x2 C2x0 C2x1 C2x2  - TCASELLA
        N1 N2 N3 N4 N5 N6 N7 N8  - TNUMERO)
    (:init 
	    ;=================================
	    ; Estat inicial
			(EstaPlena N1 C0x0)
			(EstaPlena N2 C0x1)
			(EstaPlena N3 C0x2)
			(EstaPlena N8 C1x0)
			(EstaBuida C1x1)
			(EstaPlena N4 C1x2)
			(EstaPlena N7 C2x0)
			(EstaPlena N6 C2x1)
			(EstaPlena N5 C2x2)	    
		;=================================
		; Veinatge de caselles
		;=================================
	    ;Relacions horitzontals
		(Veina C0x0 C0x1)
		(Veina C0x1 C0x2)
		(Veina C1x0 C1x1)
		(Veina C1x1 C1x2)
		(Veina C2x0 C2x1)
		(Veina C2x1 C2x2)
		;---------------------------------
	    ;Relacions verticals
		(Veina C0x0 C1x0)
		(Veina C1x0 C2x0)
		(Veina C0x1 C1x1)
		(Veina C1x1 C2x1)
		(Veina C0x2 C1x2)
		(Veina C1x2 C2x2)
	
    )    
    (:goal 
        (and  
		    (EstaPlena N2 C0x0)
			(EstaPlena N8 C0x1)
			(EstaPlena N1 C0x2)
			(EstaBuida C1x0)
			(EstaPlena N4 C1x1)
			(EstaPlena N3 C1x2)
			(EstaPlena N7 C2x0)
			(EstaPlena N6 C2x1)
			(EstaPlena N5 C2x2)
		)
    )
)   