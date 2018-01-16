::
::::  /hoon/kids/tree/ren
  ::
/?  310
/-  tree-include
/=  gas  /$  fuel:html
/=  kids  /^  (map @ta tree-include)
          /_  /%  /tree-combine/
/=  bump  /^  (map @ta @da)
          /_  /%  /tree-bump/
::
|=  $=  opts  %-  list
  $?  %date
      %author
      %title
      [%show ?(%preview %full %full-no-link)]
      [%count @u]
      [%sort ?(%date %default %bump)]
      %reverse
      [%class @t]
      [%sub-class @t]
      [%id @t]
      [%sub-id @t]
      [%datapath @t]
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
  'list'
?>  ?=(@t class-val)
::
=/  id-val
  ?:  (~(has by named-opt) %id)
    (~(got by named-opt) %id)
  ''
?>  ?=(@t id-val)
::
=/  sub-class-val
  ?:  (~(has by named-opt) %sub-class)
    (~(got by named-opt) %sub-class)
  ''
?>  ?=(@t sub-class-val)
::
=/  sub-id-val
  ?:  (~(has by named-opt) %sub-id)
    (~(got by named-opt) %sub-id)
  ''
?>  ?=(@t sub-id-val)
::
::=/  layout-element  ?:(=(layout-opt %grid) "col-md-4" "")
=/  sort-opt
  ?.  (~(has by named-opt) %sort)
    %default
  (~(got by named-opt) %sort)
=/  sorted  %+  sort  ~(tap by kids)
  |=  $:  [anom=@ta adat=tree-include]
          [bnom=@ta bdat=tree-include]
      ==
  ^-  ?
  =/  has-a  ~(has by meta.adat)
  =/  has-b  ~(has by meta.bdat)
  =/  got-a  ~(got by meta.adat)
  =/  got-b  ~(got by meta.bdat)
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
=?  sorted  (has-opt %reverse)
  (flop sorted)
=/  count
  ?:  (~(has by named-opt) %count)
    (~(got by named-opt) %count)
  (lent sorted)
?>  ?=(@ count)
::
=/  link-to
  ?:  (~(has by named-opt) %datapath)
    (~(got by named-opt) %datapath)
  './'
?>  ?=(@t link-to)
::
^-  manx
;div(class (trip class-val), id (trip id-val))
;*  %+  turn  (scag count sorted)
|=  [name=@ta inc=tree-include]
=/  has-meta  ~(has by meta.inc)
=/  got-meta  ~(got by meta.inc)
=/  link-to  "{(trip link-to)}{(trip name)}/"
;div(class (trip sub-class-val), id (trip sub-id-val))
  ;*  ?:  &((has-opt %date) (has-meta %date))
    ;=  ;span.date: {(trip (got-meta %date))}
    ==
  ~
  ;*  ?:  &((has-opt %author) (has-meta %author))
    ;=  ;h2.author: {(trip (got-meta %author))}
    ==
  ~
  ;*  ?:  (has-opt %title)
        ;=  ;h1.title
        ;+  ?:  (has-meta %title)
              ;a(href link-to): {(trip (got-meta %title))}
            ?~  head.inc
              ;a(href link-to): {(trip name)}
            ;a(href link-to): *{head.inc}
        ==
        ==
      ~
  ;*  ?:  (~(has by named-opt) %show)
        =+  x=(~(got by named-opt) %show)
        ?:  =(x %preview)
          snip.inc
        ?:  =(x %full)
          body.inc
        ?:  =(x %full-no-link)
          ;=  +{full.inc}
          ==
        ~
      ~
  ==
==
