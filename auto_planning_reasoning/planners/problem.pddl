(define (problem help-patients-one) (:domain ambulance-and-hospital)
(:objects 
    ambulancecar - ambulance
    patient1 patient2 - patient
    hospital l2 l3 l4 - location
)

(:init
    (at patient1 l3)
    (at patient2 l4)
    (at ambulancecar hospital)
    (connected hospital l2)
    (connected l2 hospital)
    (connected l2 l4)
    (connected l4 l2)
    (connected l3 l4)
    (connected l4 l3)
    (free ambulancecar)
)

(:goal (and
    (at patient1 hospital)
    (at patient2 hospital)
))
)
