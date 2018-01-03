function addPost(spur){
  var title = document.getElementsByTagName("input")[0].value;
  var comment = document.getElementsByTagName("textarea")[0].value;
  
  var data = {
    pax: "/",
    sup: spur,
    hed: title,
    txt: comment,
  };

  var params = {
    appl: "fora",
    mark: "fora-post",
  };

  window.urb.send(data, params, function(error, result){
    if (error == null){
      window.location.href = "../../fora.last-post?by=~zod"
    }
//    console.log(error);
//    console.log(result);
  });

}


function addComment(spur){
  var comment = document.getElementsByTagName("textarea")[0].value;

  var data = {
    pax: "/",
    sup: spur,
    txt: comment,
  };

  var params = {
    appl: "fora",
    mark: "fora-comment",
  };

  window.urb.send(data, params, function(error, result){
//    console.log(error);
//    console.log(result);
  });
}


