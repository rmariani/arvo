::
::::  /hoon/last-post/ren
  ::
/?  310
/=  gas   /$  fuel:html
/=  meta  /:  /%/posts  
          /^  (map @ta (map knot cord))
          /_  /%  /tree-front/
=/  self  (fall (~(get by qix.gas) %by) '')
=/  filtered=(list [@ta (map knot cord)])  
  %+  skim  ~(tap by meta)
  |=  [pos=@ta dat=(map knot cord)]
  ?.  (~(has by dat) %author)
    |
  ?:  =(self (~(got by dat) %author))
    &
  |
=/  sorted=(list [@ta (map knot cord)])  
  %+  sort  filtered
  |=  $:  [@ta a=(map knot cord)]
          [@ta b=(map knot cord)]
      ==
  ^-  ?
  ?:  &((~(has by a) %date) (~(has by b) %date))
    %+  gth  (slav %da (~(got by a) %date)) 
             (slav %da (~(got by b) %date))
  ~|  %missing-date  !!
=/  final=tape  (trip -:(snag 0 sorted))
^-  tape
"./{(scag 1 s.bem.gas)}/posts/{final}/"
