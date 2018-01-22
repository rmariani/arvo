/?  310
/=  gas  /$  fuel:html
/=  plan  /|  /plan/  
              /~  [[who='' loc='unknown'] acc=~]
          ==
::
=/  parent  (scow %p (sein:title p.bem.gas))
=/  link  (spud (en-beam:format bem.gas))
=/  signedin/?
  %-  ~(has in (~(get ju aut.ced.gas) %$)) 
      (scot %p p.bem.gas)
::
:-  :~  
  nav+'false'
  container+'false'
  title+'Home'
==
;>
;div(class "plan", id "body")
  ;div(class "above")
  ;div(class "container panel stack")
    ;nav(class "navbar panel")
      ;ul(class "nav navbar-nav")
        ;*  ?:  signedin
          ;=  ;li(class "nav-item")
                ;a(href "/~~/talk/"): Talk
              ==
              ;li(class "nav-item")
                ;a(href "/~~/dojo/"): Dojo
              ==
              ;li(class "nav-item")
                ;a(href "/~~/static/"): Static
              ==
              ;li(class "nav-item pull-right")
                ;a(href "/~/away"): Log out
              ==
          ==
        ;=  ;li(class "nav-item pull-right")
              ;a(href "/~~"): Log in
            ==
        ==
      ==
    ==
  ==
  ;div(class "container plan stack")
    ;div(class "col-md-9")
      ;div(class "plan")
        ;div(class "home");
        ;div(class "mono"): {<p.bem.gas>}
        ;+  ?:  =('' who.plan)
              ;h6(style "display:none;");
            ;h6: {(trip who.plan)}
        ;div(class "grid")
        
          ;div(class "tr")
            ;div(class "td"): Location:
            ;div(class "td", id "loc"): {(trip loc.plan)}
          ==
          ;div(class "tr")
            ;div(class "td"): Issued by:
            ;div(class "td")
              ;a(href "//{(slag 1 parent)}.urbit.org"): {parent}
            ==
          ==

          ;div(class "tr")
            ;div(class "td"): Immutable link
            ;div(class "td")
              ;a(href link): {link}
            ==
          ==
        ==
        ;+  ?:  signedin
          ;button(class "edit", onclick "editPlanInfo(true);"): Edit
        ;div;
      ==
    ==
  ==
  ==
==
