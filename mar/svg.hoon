::
::::  /hoon/svg/mar
  ::
/?    309
  ::
::::  compute
  ::
|_  svg/@t
::
++  grow                                                   ::  convert to
  |%                                                       ::
  ++  mime  [[~.image `@ta`'svg+xml' ~] (met 3 svg) svg]   ::  to %mime
  --                                                       ::
++  grab  |%                                               ::  convert from
          ++  noun  @t                                     ::  clam from %noun
          ++  mime  |=({p/mite q/octs} q.q)                ::  retrieve form $mime
          --
++  grad  %mime
--
