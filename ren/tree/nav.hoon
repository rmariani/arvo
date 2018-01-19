::
::::  /hoon/nav/tree/ren
  ::
/?  310
/-  tree-include
/=  gas  /$  fuel:html
/=  kid-meta  /:  /%%/
              /^  (map @ta (map knot cord))
              /_  /%  /tree-front/
/=  our-meta   /^  (map knot cord)
               /%  /tree-front/
/=  bump  /:  /%%/
          /^  (map @ta @da)
          /_  /%  /tree-bump/
::
=/  sort-opt/@tas  
  %+  scot  %tas
  (fall (~(get by our-meta) %navsort) 'default')
=/  sorted  %+  sort  ~(tap by kid-meta)
  |=  $:  [anom=@ta adat=(map knot cord)]
          [bnom=@ta bdat=(map knot cord)]
      ==
  ^-  ?
  =/  has-a  ~(has by adat)
  =/  has-b  ~(has by bdat)
  =/  got-a  ~(got by adat)
  =/  got-b  ~(got by bdat)
  ?:  =(%bump sort-opt)
    ?:  &((~(has by bump) anom) (~(has by bump) bnom))
      %+  gte  (~(got by bump) anom)
               (~(got by bump) bnom)
    ~|  %missing-bump  !!
  ?:  =(%date sort-opt)
    ?:  &((has-a %date) (has-b %date))
      %+  lte  (slav %da (got-a %date)) 
               (slav %da (got-b %date))
    ~|  %missing-date  !!  
  ?:  &((has-a %sort) (has-b %sort))
    %+  lte  (slav %ud (got-a %sort))
             (slav %ud (got-b %sort))
  ?:  (has-a %sort)
    &
  ?:  (has-b %sort)
    |
  &
::
=/  up-link/tape
  (trip (fall (~(get by our-meta) %parent) '../'))
=/  up-link
  ?:  =('/' (snag 0 (flop up-link)))
    up-link
  "{up-link}/"
::
=/  sibs-link/tape
  (trip (fall (~(get by our-meta) %siblings) '../'))
=/  sibs-link
  ?:  =('/' (snag 0 (flop sibs-link)))
    sibs-link
  "{sibs-link}/"
::
=/  home-link  
  (trip (fall (~(get by our-meta) %navhome) '/'))
=/  home-link
  ?:  =('/' (snag 0 (flop home-link)))
    home-link
  "{home-link}/"
::
=/  our-idx  +:(find [[-:(scag 1 s.bem.gas) our-meta] ~] sorted)
::
=/  prev-idx
  ?:(=(our-idx 0) (dec (lent sorted)) (dec our-idx))
=/  prev-item  -:(snag prev-idx sorted)
=/  prev-link  "{sibs-link}{(trip prev-item)}/"
::
=/  next-idx
  ?:(=(our-idx (dec (lent sorted))) 0 +(our-idx))
=/  next-item  -:(snag next-idx sorted)
=/  next-link  "{sibs-link}{(trip next-item)}/"
::
^-  manx
;div(class "links")
  ;div(class "icon")
    ;a(class "home", href home-link);
    ;div(class "dpad")
      ;a(class "up", href up-link);
      ;div
        ;a(class "prev", href prev-link);
        ;a(class "next", href next-link);
      ==
    ==
  ==
  ;div
    ;ul(class "nav")
    ;*  %+  turn  sorted
    |=  [name=@ta dat=(map knot cord)]
    =/  has-meta  ~(has by dat)
    =/  got-meta  ~(got by dat)
    =/  link-to  "{sibs-link}{(trip name)}/"
    ;li(class "nav-item")
      ;+  
        ?:  (has-meta %title)
          ;a(class "nav-link", href link-to): {(trip (got-meta %title))}
        ;a(class "nav-link", href link-to): {(trip name)}
    ==
    ==
  ==
==
