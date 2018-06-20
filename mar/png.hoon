::
::::  /hoon/png/mar
  ::
/?    309
  ::
::::  compute
  ::
|_  png/@
::
++  grow                                                   ::  convert to
  |%                                                       ::
  ++  mime  [/image/png (met 3 png) png]                   ::  to %mime
  --                                                       ::
++  grab  |%                                               ::  convert from
          ++  noun  @                                      ::  clam from %noun
          ++  mime  |=({p/mite q/octs} q.q)                ::  retrieve form $mime
          --
++  grad  %mime
--
