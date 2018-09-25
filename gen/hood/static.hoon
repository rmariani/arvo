/?  309
::
/=  pre-process
  /^  (map path [@tas @t])
  /:  /===/web/static-site  /*
  /|  /;  |=(@t [%html +<])  /&html&/!hymn/
      /;  |=(@t [%html +<])  /&html&/&elem&/umd/
  ::    XX /lib/down-jet/parse is broken
  ::    /;  |=(@t [%html +<])  /&html&/&hymn&/&down&/md/    
      /;  |=(@t [%raw +<])   /atom/
  ==
::
:-  %say
|=  $:  [now=@da eny=@uv bec=beak]
        ~
        ~
    ==
:-  %dill-blit
=/  trio  /(scot %p p.bec)/[q.bec]/(scot r.bec)
=/  dirs  .^((list path) %ct (weld trio /web/static-site))
::
:-  %mor
%+  roll  dirs
|=  [pax=path out=(list [%sav path @t])]
=/  path-prefix=path  (scag (dec (lent pax)) pax)
=/  pre=[@tas @t]  (~(got by pre-process) path-prefix)
:_  out
:-  %sav
?:  =(%raw -.pre)
  [pax +.pre]
[(weld path-prefix /[-.pre]) +.pre]
