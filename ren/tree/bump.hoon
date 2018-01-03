::
::::  /hoon/bump/tree/ren
  ::
/?  310
/=  meta  /^  (map knot cord)  /tree-front/
/=  kids  /^  (map @ta (map knot cord))
          /:  /%/comments  /_  /tree-front/
^-  @da
?:  =(0 ~(wyt by b))
  ?:  (~(has by meta) %date)
    (slav %da (~(got by meta) %date))
  ~|  %missing-date  !!
=/  sorted  
  %+  sort  ~(val by b)
  |=  [a=(map knot cord) b=(map knot cord)]
  ^-  ?
  ?:  &((~(has by a) %date) (~(has by b) %date)))
    %+  gte  (slav %da (~(got by a) %date))
             (slav %da (~(got by b) %date))
  ~|  %missing-date  !!
(slav %da (~(got by (snag 0 sorted)) %date))


