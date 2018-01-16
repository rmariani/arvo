::
::::  /hoon/bump/tree/ren
  ::
/?  310
/=  meta  /^  (map knot cord)
          /&front&/!flem/
/=  kids  /^  (map @ta (map knot cord))
          /:  /%/comments  /_  /front/
?:  =(0 ~(wyt by kids))
  ?:  (~(has by meta) %date)
    `@da`(slav %da (~(got by meta) %date))
  ~|  %missing-date  !!
=/  sorted  
  %+  sort  ~(val by kids)
  |=  [a=(map knot cord) b=(map knot cord)]
  ^-  ?
  ?:  &((~(has by a) %date) (~(has by b) %date))
    %+  gte  (slav %da (~(got by a) %date))
             (slav %da (~(got by b) %date))
  ~|  %missing-date  !!
`@da`(slav %da (~(got by (snag 0 sorted)) %date))
