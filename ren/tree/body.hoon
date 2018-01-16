::
::::  /hoon/body/tree/ren
  ::
/?    310
/=  gas       /$  fuel:html
/=  meta      /^  (map knot cord)  /%  /tree-front/
/=  element   /%  /tree-elem/
/=  nav       /%  /tree-nav/
/=  comments  /%  /tree-comments/
::
=/  body/marl
 ;=  ;+  element
     ;+  ?:  &((~(has by meta) %comments) =((~(got by meta) %comments) 'true'))
       (comments s.bem.gas)
     ;div;
 ==
=/  contents/marl
    ?:  |(!(~(has by meta) %nav) =((~(got by meta) %nav) 'true'))
      ;=  ;div(id "head")
            ;div(class "ctrl")
            ;+  nav
            ==
          ==
          ;div(class "body col-md-9 col-md-offset-3")
          ;*  body
          ==
      ==
      ::
    ;=  ;div(class "body")
        ;*  body
        ==
    ==
^-  marl
;=  
  ;div(id "tree")
  ;*  ?:  |(!(~(has by meta) %container) =((~(got by meta) %container) 'true'))
    ;=  ;div(class "container")
        ;*  contents
        ==
    ==
    contents
  ==
==

