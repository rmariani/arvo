::
::::  /hoon/last-post/mar
  ::
/?    310
=,  mimes:html
=,  html
|_  url/tape
::
++  grow                                                ::  convert to
  |%
  ++  html  (crip (en-xml hymn))                        ::  convert to %html
  ++  mime  [/text/html (as-octs html)]                 ::  convert to %mime
  ++  hymn
    ;html
      ;head
        ;title: redirecting to {url}
        ;script
          ;-  "window.location.href = {<url>}"
        ==
      ==
      ;body
        ;p: redirecting to {url}
      ==
    ==
  --
++  grab  |%                                            ::  convert from
          ++  noun  tape                                ::  clam from %noun
--        --
