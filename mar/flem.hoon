::
::::  /hoon/flem/mar
  ::
/?    310
=,  mimes:html
=,  html
|%
+=  flem  [(list [knot cord]) manx]
--
|_  own/flem
::
++  grow                                                ::  convert to
  |%
  ++  hymn  ;html:(head body:"+{+.own}")                ::  convert to %hymn
  ++  html  (crip (en-xml hymn))                        ::  convert to %html
  ++  mime  [/text/html (as-octs html)]                 ::  convert to %mime
  ++  elem  +.own                                       ::  convert to %elem
  ++  front  (malt -.own)
  --
++  garb  /elem/front                                         ::  grabbed by
++  grab  |%                                            ::  convert from
          ++  noun  flem                                ::  clam from %noun
--        --
