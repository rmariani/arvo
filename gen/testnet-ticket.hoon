:-  %say
|=  $:  [now=@da eny=@uvJ byk=beak]
        [pill=tape ~]
        ~
    ==
:-  %tang
=/  nums=(list @)  (gulf 1 100)
%+  turn  nums
|=  idx=@
=/  her=@p  (mix (lsh 4 1 idx) p.byk)
=/  tic=@p  .^(@p /a/(scot %p p.byk)/tick/(scot %da now)/(scot %p her))
:-  %leaf
"urbit -u https://bootstrap.urbit.org/{pill} -H test.urbit.org -w {<her>} -t {<tic>}"
