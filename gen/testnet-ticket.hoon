::  for use for internal testnet purposes, remember to delete
::
::::  /hoon/test-ticket/gen
  ::
/?    310
::
::::
:-  %say
|=  $:  {now/@da eny/@uvJ bec/beak}
        {{pil=tape $~} $~}
    ==
=/  in=(list @)  (gulf 1 10)
:-  %noun
%+  turn  in
|=  a=@
=/  her=@p  (cat 4 p.bec (end 4 1 (mix eny (shax a))))
?>  =(p.bec (sein:title her))
=/  ticket=@p  .^(@p /a/(scot %p p.bec)/tick/(scot %da now)/(scot %p her))
"urbit -u {pil} -H test.urbit.org -w {<her>} -t {<ticket>}"
