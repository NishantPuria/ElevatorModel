(define   (domain elevator)
          (:requirements    :typing
                            :durative-actions
                            :fluents
                            :equality)
          (:types           floor locatable - object
                            person elevator - locatable)
          (:predicates      (at ?obj - locatable ?floor - floor)
                            (isFull ?elev - elevator)
                            (isEmpty ?elev - elevator)
                            (in ?pers - person ?elev - elevator)
                            (isWaiting ?pers - person)
                            (isConnected ?flo1 ?flo2 - floor))
      ;   (:functions       (time_to_move ?flo-from ?flo-to - floor))
          (:action MOVE_UP
              :parameters   (?elev - elevator
                            ?flo-from - floor
                            ?flo-to - floor)
      ;       :duration     (= 1)
              :precondition    (and   (at ?elev ?flo-from)
                                      (isConnected ?flo-from ?flo-to))
      ;                           (overall (?flo-to = ?flo-from + 1)))
              :effect       (and  (not (at ?elev ?flo-from))
                                  (at ?elev ?flo-to))
          )
)
