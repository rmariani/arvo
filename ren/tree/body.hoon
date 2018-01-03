::
::::  /hoon/body/tree/ren
  ::
/?    310
/=  meta  /^  (map knot cord)  /%  /tree-front/
/=  body  /%  /tree-elem/
/=  nav   /%  /tree-nav/
^-  marl
;=
  ;div(id "tree")
  ;div(class "container")
    ;div(id "head")
    ;*  ?:  (~(has by meta) %nav)                       :: with nav bar
        ;=  ;div(class "ctrl")
            ;+  (nav ~)
            ==
            ;div(class "body col-md-9 col-md-offset-3")
            ;+  body
            ==
        ==
      ::
      ;=  ;div(class "body")                            :: without nav bar
          ;+  body
          ==
      ==
    ==
  ==
  ==
==
