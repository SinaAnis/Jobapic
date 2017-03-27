$(".info-item .btn").click(function(){
  $(".container").toggleClass("log-in");
  if (window.matchMedia("(max-width: 700px)").matches) {
	  var elm = document.getElementById("sign");
	elm.style.marginLeft = "-27%";
	elm.style.height = "265px";
	
		//var h = document.getElementById("txt");
		//h.style.display = "none";
}
else{
	
}
});
$(".container-form .btn").click(function(){
 
});

function validation(f) {
  if (f.mdp1.value == '' || f.mdp2.value == '') {
    alert('Tous les champs ne sont pas remplis');
    f.mdp1.focus();
    return false;
    }
  else if (f.mdp1.value != f.mdp2.value) {
    alert('Ce ne sont pas les mêmes mots de passe!');
    f.mdp1.focus();
    return false;
    }
  else if (f.mdp1.value == f.mdp2.value) {
    return true;
    }
  else {
    f.mdp1.focus();
    return false;
    }
  }
