::
::::  /hoon/head/tree/ren
  ::
::
/?    310
/=    tub    /$  |=({bem/beam *} (slag (lent /web) (flop s.bem)))
/=    aut
  /$  %+  cork  fuel:html                           :: after parsing params,
      =,  title
      |=  gas/epic:eyre  ^-  ?                         :: check that the fcgi
      %+  lien  ~(tap in (~(get ju aut.ced.gas) %$))    :: has an identity
      |=(a/knot !=(%pawn (clan (slav %p a))))           :: which isn't a comet
/=    dbg
  /^  {nopack/? nomin/?}
  /$  %+  cork  fuel:html                           :: after parsing params,
      |=  gas/epic:eyre  ^-  {? ?}                     :: check if the query
      :-  (~(has by qix.gas) 'dbg.nopack')              :: dictates separate files
      (~(has by qix.gas) 'dbg.nomin')                   :: and/or unminified assets
/=    extras    /:  /===/ren/tree/head/extras           :: additional scripts
                /^  (map knot cord)    /_  /js/
/=  meta  /^  (map knot cord)
          /%  /tree-front/

=/  title  %+  fall  (~(get by meta) %title)
           'Urbit - A personal server'
::
::::
  ::
^-  marl
;=  ;title: {(trip title)}
    ;meta(name "viewport", content "width=device-width, initial-scale=1");
    ;link(type "text/css", rel "stylesheet", href "/===/web/lib/css/base.css");
    ;link(type "application/rss+xml", rel "alternate", href "{(spud tub)}.rss-xml");
    ;script(type "text/javascript", src "/===/web/tree/util.js");
    ;script(type "text/javascript", src "/===/web/lib/base.js");
    ;script(type "text/javascript", src "{?.(aut "" "/~~/~/at")}".
                                        "/===/web/lib/js/urb.js");
==
