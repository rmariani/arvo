::
::::  /hoon/nav/tree/ren
  ::
/?  310
/-  tree-include
/=  gas  /$  fuel:html
/=  meta  /^  (map @ta (map knot cord))
          /_  /%  /&front&/|(/front/ /~[~])
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
=/  sorted  %+  sort  ~(tap by meta)
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
=/  up-link  (spud (slag 1 (flop s.bem.gas)))
::
^-  manx
;div(class "links")
  ;div(class "icon")
    ;div(class "home");
    ;div(class "app");
    ;div(class "dpad")
      ;a(class "up", href up-link);
      ;div
        ;a(class "prev");
        ;a(class "next");
      ==
    ==
  ==
  ;div(class (weld "items" " {(trip class-val)}"), id id-val)
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
