/=  gas   /$  fuel:html
=/  spur  (spud (slag 1 s.bem.gas))
;>
# Add

;script(type "text/javascript", src "form-submit.js");
;form ::(method "post", action "/~/to/talk/talk-fora-post")
  ;input(type "text", name "title");
  ;br;
  ;textarea(type "text", name "comment");
  ;br;
::  ;input(type "button", value "Post", onclick "addPost(\"/fora/web\");");
  ;input(type "button", value "Post", onclick "addPost({<spur>});");
==

## [Back](../fora)
