::
::::  /hoon/kids/components/ren
  ::
/?  309


/=  front  /^  (map knot (map knot cord))
           /_  /%  /components-front/

/=  kids  /^  (map knot manx)
          /_  /%  /&elem&/umd/
::
|=  $=  opts  %-  list
  $?  %date
      %author
      %title
      [%count @u]
      [%sort ?(%date %default)]
      %reverse
      [%dir @t]
      [%class @t]
  ==
=/  has-opt   ~(has in (sy opts))
=/  named-opt  %-  malt
  %+  turn  (skim opts |=(a=* .?(a)))
  |=  a=*
  ?>  ?=([@ *] a)
  [`@tas`-.a +.a]
=/  class-val
  (fall (~(get by named-opt) %class) 'kids-ul')
?>  ?=(@t class-val)
=/  sort-opt
  (fall (~(get by named-opt) %sort) %default)
=/  sorted  %+  sort  ~(tap by front)
  |=  $:  [anom=@ta adat=(map knot cord)]
          [bnom=@ta bdat=(map knot cord)]
      ==
  ^-  ?
  =/  has-a  ~(has by adat)
  =/  has-b  ~(has by bdat)
  =/  got-a  ~(got by adat)
  =/  got-b  ~(got by bdat)
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
=/  count
  (fall (~(get by named-opt) %count) (lent sorted))
?>  ?=(@ count)
::::
=/  link-to
  (fall (~(get by named-opt) %dir) './')
?>  ?=(@t link-to)
=/  link-to/tape
  ?:  =('/' (snag 0 (flop (trip link-to))))
    (trip link-to)
  "{(trip link-to)}/"
::
^-  manx
;ul(class (trip class-val))
;*  %+  turn  (scag count sorted)
|=  [nom=knot meta=(map knot cord)]
=/  has-meta  ~(has by meta)
=/  got-meta  ~(got by meta)
=/  link-to  "{link-to}{(trip nom)}/"
;li
  ::
  ;*  ?.  &((has-opt %date) (has-meta %date))
      ~
    ;=  ;div.date: {(trip (got-meta %date))}
    ==
  ::
  ;*  ?.  &((has-opt %author) (has-meta %author))
      ~
    ;=  ;div.author: {(trip (got-meta %author))}
    ==
  ::
  ;*  ?.  &((has-opt %title) (has-meta %title))
      ~
    ;=  ;div.title
          ;a(href link-to): {(trip (got-meta %title))}
        ==
    ==
  ::
  ==
==
