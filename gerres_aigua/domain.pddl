﻿(define (domain increment)
    (:requirements :strips :equality :typing :fluents)
    (:functions
        (Capacitat ?gerra )
        (Contingut ?gerra )
    )
    (:predicates
        (Final)
    )
    (:action BuidaGerra
        :parameters (?gerra)
        :effect (and
            (decrease (Contingut ?gerra) (Contingut ?gerra))       
        )        
    )
    (:action Solucio
        :parameters (?gerra)
        :precondition (= (Contingut ?gerra) 2)         
        :effect (Final)
    )
    (:action OmplirGerra
        :parameters (?gerra)
        :effect (and
            (assign (Contingut ?gerra) (Capacitat ?gerra))         
        )        
    )
    (:action VolcarGerraTotalment
        :parameters (?gerraFrom ?gerraTo)
        :precondition (>= (- (Capacitat ?gerraTo) (Contingut ?gerraTo) ) (Contingut ?gerraFrom))         
        :effect (and
            (increase (Contingut ?gerraTo) (Contingut ?gerraFrom))    
            (assign (Contingut ?gerraFrom) 0)   ; a zero                   
        )        
    )
    (:action VolcarGerraParcialment
        :parameters (?gerraFrom ?gerraTo)
        :precondition (< (- (Capacitat ?gerraTo) (Contingut ?gerraTo)) (Contingut ?gerraFrom)) 
        :effect (and
            (decrease (Contingut ?gerraFrom) (- (Capacitat ?gerraTo) (Contingut ?gerraTo))  )       
            (assign (Contingut ?gerraTo) (Capacitat ?gerraTo)) ;la gerra de desti s'omple
        )        
    )
    
)