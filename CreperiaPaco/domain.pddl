(define (domain apilador)
	(:requirements :strips :equality :adl
	)
	(:predicates
		(PlanxaBuida)
		(Acabat ?ingredient)
		(Comanda)
		(Iguals ?ingredient ?ingredient)
		(Bolteada)
		(TirarIngredients)
		(Cuinada)
	)
)

(:action AceptaIngredients
	:parametres (?Ingr1 ?Ingr2 ?Ingr3 ?LlistaIngredients)
	:precondition (and (Comanda) ())
)

(:action TirarPrepartCrepe
	:parametres 
)