(define (problem help-patients-one) (:domain ambulance-and-hospital)
(:objects 
    ambulancecar - ambulance
    patient1 patient2 patient3 - patient
    hospital l2 l3 l4 l5 l6 - location
)

(:init
    (at patient1 l3)
    (at patient2 l4)
    (at patient3 l6)
    (at ambulancecar hospital)
    (connected hospital l2)
    (connected hospital l5)
    (connected l2 hospital)
    (connected l5 l6)
    (connected l6 l5)
    (connected l5 hospital)
    (connected l2 l4)
    (connected l4 l2)
    (connected l3 l4)
    (connected l4 l3)
    (free ambulancecar)
)

(:goal (and
    (at patient1 hospital)
    (at patient2 hospital)
    (at patient3 hospital)
))
)
