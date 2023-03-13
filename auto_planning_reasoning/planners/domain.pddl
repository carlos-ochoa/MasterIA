(define (domain ambulance-and-hospital)

(:requirements :strips :typing)

(:types ambulance hospital location patient
)

(:action move
    :parameters (?a - ambulance ?from - location ?dest - location)
    :precondition (and 
        (at ?a ?from) (connected ?from ?dest)
    )
    :effect (and 
        (at ?a ?dest) (not (at ?a ?from))
    )
)

(:action take-patient
    :parameters (?a - ambulance ?p - patient ?l - location)
    :precondition (and 
        (at ?p ?l) (at ?a ?l) (free ?a)
    )
    :effect (and 
        (on ?p ?a) (not (free ?a)) (not (at ?p ?l)) 
    )
)

(:action deliver-patient
    :parameters (?a - ambulance ?l - location ?p - patient)
    :precondition (and 
        (at ?a ?l) (on ?p ?a)
    )
    :effect (and 
        (at ?p ?l) (not (on ?p ?a)) (free ?a)
    )
)
)