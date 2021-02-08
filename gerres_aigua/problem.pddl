﻿(define (problem increment_prob)
    (:domain increment)
    (:objects GerraA GerraB)
    (:init 
        (= (Capacitat GerraA ) 4)
        (= (Contingut GerraA ) 0)
        (= (Capacitat GerraB ) 3)
        (= (Contingut GerraB ) 0)        
    )    
    (:goal 
        (and  
		    (Final)
		)
    )
)   