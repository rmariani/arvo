::
::::  /hoon/jpg/mar
  ::
/?    309
  ::
::::  compute
  ::
|_  jpg/@
::
++  grow                                                   ::  convert to
  |%                                                       ::
  ++  mime  [/image/jpeg (met 3 jpg) jpg]   ::  to %mime
  --                                                       ::
++  grab  |%                                               ::  convert from
          ++  noun  @                                      ::  clam from %noun
          ++  mime  |=({p/mite q/octs} q.q)                ::  retrieve form $mime
          --
++  grad  %mime
--
