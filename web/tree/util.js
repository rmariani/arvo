window.history.replaceState(null, document.title, window.location.href.replace(/\/?$/, '/'));

function addNewPost(spur){
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
    window.location.href = "../../fora.last-post?by=~"+window.urb.ship;
  });
  


}


function addNewComment(spur){
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
    window.location.reload(true);
  });
}

function editPlanInfo(viewmode){
var edit = document.getElementsByClassName('edit')[0];

  who = document.getElementsByTagName('h6')[0];
  loc = document.getElementById('loc');
  if (viewmode) {
    who.style.display = 'block';

    var whoIn = document.createElement("input");
    whoIn.placeholder = who.innerHTML || 'Sun Tzu';
    who.innerHTML = ''
    who.appendChild(whoIn);

    var locIn = document.createElement("input");
    locIn.placeholder = loc.innerHTML || 'unknown';
    loc.innerHTML = '';
    loc.appendChild(locIn);

    edit.innerHTML = 'Save';
    edit.onclick = function(){ editPlanInfo(false); };
  } else {
    whoIn = document.getElementsByTagName("input")[0];
    locIn = document.getElementsByTagName("input")[1];
    
    var data = {
      who: whoIn.value,
      loc: locIn.value
    };

    var params = {
      appl: "hood",
      mark: "write-plan-info",
    };
    
    window.urb.send(data, params, function(err, res){
      window.location.reload(true);
    });

  }
}
