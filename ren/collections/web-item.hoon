/+  collections
/=  gas  /$  fuel:html
/=  raw
  /^  $@(~ raw-item:collections)
  /|  /;  |=  [a=(map knot cord) b=@t ~]
          ^-  raw-item:collections
          [%udn a b]
          /.  /front/
              /udn/
          ==
      ::
      /~  ~
  ==
::
/=  col
  /^  $@  ~
      $%  [%config config=config:collections items=(map knot item:collections) ~]
          [%no-config items=(map knot item:collections) ~]
      ==
  /|  /.  /~  %config
          /collections-config/
          /_  /collections-item/
      ==
      ::
      /.  /~  %no-config
          /_  /collections-item/
      ==
      ::
      /~  ~
  ==

::
::
^-  item:collections
?~  col
  ?~  raw
    !!
  [%raw raw]
::
?:  ?=(%no-config -.col)
  ?:  =(s.bem.gas /collections/web)
    ?~  raw
      [%collection *config:collections items.col]
    [%both [*config:collections items.col] raw]
  ?~  raw
    !!
  [%raw raw]
?~  raw
  [%collection config.col items.col]
[%both [config.col items.col] raw]
