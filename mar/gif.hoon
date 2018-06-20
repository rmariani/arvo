::
::::  /hoon/gif/mar
  ::
/?    309
  ::
::::  compute
  ::
|_  gif/@
::
++  grow                                                   ::  convert to
  |%                                                       ::
  ++  mime  [/image/gif (met 3 gif) gif]                   ::  to %mime
  --                                                       ::
++  grab  |%                                               ::  convert from
          ++  noun  @                                      ::  clam from %noun
          ++  mime  |=({p/mite q/octs} q.q)                ::  retrieve form $mime
          --
++  grad  %mime
--
