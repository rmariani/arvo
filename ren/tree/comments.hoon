::
::::  /hoon/comments/tree/ren
  ::
/?  310
/=  thread  /:  /%/comments  /%  /tree-kids/
|=  sup/spur
^-  manx

;div
  ;+  (thread show+%full-no-link %author %date sort+%date class+'comments' sub-class+'comment' ~)
  ;div(class "add-comment")
    ;form
      ;textarea(type "text", name "comment");
      ;input(type "button", class "btn btn-primary", value "Add comment", onclick "addNewComment('{(spud sup)}');");
    ==
  ==
==
