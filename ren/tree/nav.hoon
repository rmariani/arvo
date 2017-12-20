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
::
|=  $=  opts  %-  list
  $?  [%sort ?(%date %default)]
      %reverse
      [%class @t]
      [%id @t]
  ==
=/  has-opt   ~(has in (sy opts))
=/  named-opt  %-  malt
  %+  turn  (skim opts |=(a=* .?(a)))
  |=  a=*
  ?>  ?=([@ *] a)
  [`@tas`-.a +.a]
=/  class-val
  ?:  (~(has by named-opt) %class)
    (~(got by named-opt) %class)
  ''
?>  ?=(@t class-val)
=/  id-val
  ?:  (~(has by named-opt) %id)
    (~(got by named-opt) %id)
  ''
?>  ?=(@t id-val)
=/  sort-opt
  ?.  (~(has by named-opt) %sort)
    %default
  (~(got by named-opt) %sort)
=/  sorted  %+  sort  ~(tap by kid-meta)
  |=  $:  [@ta a=(map knot cord)]
          [@ta b=(map knot cord)]
      ==
  ^-  ?
  =/  has-a  ~(has by a)
  =/  has-b  ~(has by b)
  =/  got-a  ~(got by a)
  =/  got-b  ~(got by b)
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
=?  sorted  (has-opt %reverse)
  (flop sorted)
=/  up-link  
 ?:  (~(has by our-meta) %parent)
   (~(got by our-meta) %parent)
 (spat (slag 1 (flop (slag 1 s.bem.gas))))
?>  ?=(@t up-link)
=/  up-link  (trip up-link)
=/  home-link  ?:  (~(has by kid-meta) %navhome)
                 (~(got by kid-meta) %navhome)
               '/'
?>  ?=(@t home-link)
=/  our-idx  +:(find [[-:(scag 1 s.bem.gas) our-meta] ~] sorted)
::
=/  prev-idx
  ?:(=(our-idx 0) (dec (lent sorted)) (dec our-idx))
=/  prev-item  -:(snag prev-idx sorted)
=/  prev-link  (weld up-link "/{(trip prev-item)}")
::
=/  next-idx
  ?:(=(our-idx (dec (lent sorted))) 0 +(our-idx))
=/  next-item  -:(snag next-idx sorted)
=/  next-link  (weld up-link "/{(trip next-item)}")
::
^-  manx
;div(class "links")
  ;div(class "icon")
    ;a(class "home", href (trip home-link));
    ;div(class "dpad")
      ;a(class "up", href up-link);
      ;div
        ;a(class "prev", href prev-link);
        ;a(class "next", href next-link);
      ==
    ==
  ==
  ;div(class (weld "items" " {(trip class-val)}"), id (trip id-val))
    ;ul(class "nav")
    ;*  %+  turn  sorted
    |=  [name=@ta dat=(map knot cord)]
    =/  has-meta  ~(has by dat)
    =/  got-meta  ~(got by dat)
    =/  link-to  (weld up-link "/{(trip name)}")
    ;li(class "nav-item")
      ;+  ?:  (has-meta %title)
            ;a(class "nav-link", href link-to)
              {(trip (got-meta %title))}
            ==
          ;a(class "nav-link", href link-to)
            {(trip name)}
          ==
    ==
    ==
  ==
==
