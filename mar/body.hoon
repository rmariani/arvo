::
::::  /hoon/body/mar
  ::
/?    310
=,  html
|%
  ++  hedtal                                            :: puts h1 into hed and
    =|  met/marl                                        :: the rest into tal
    |=  a/marl  ^-  {hed/marl tal/marl}
    ?~  a  [~ ~]
    ?:  ?=($h1 n.g.i.a)
      [c.i.a (weld (flop met) t.a)]
    ?:  ?=($meta n.g.i.a)
      $(a t.a, met [i.a met])
    =/  had/{marl marl}  $(a c.i.a)
    ?^  -.had  had
    $(a t.a)
--
::
=,  mimes:html
|_  {hed/marl tal/marl}
::
++  grow                                                ::  convert to
  |%
  ++  elem  ;div:(h1:"*{hed}" div:"*{tal}")             ::  convert to %elem
  ++  hymn  ;html:(head:title:"snip" body:"+{elem}")    ::  convert to %hymn
  ++  html  (crip (en-xml hymn))                        ::  convert to %html
  ++  mime  [/text/html (as-octs html)]                 ::  convert to %mime
  --
++  grab  |%                                            ::  convert from
          ++  noun  {marl marl}                         ::  clam from $noun
          ++  elem  |=(a/manx (hedtal +.a))
--        --
