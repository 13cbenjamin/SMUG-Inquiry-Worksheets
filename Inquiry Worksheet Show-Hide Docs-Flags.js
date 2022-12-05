let url = window.location.href
let tabCheck = url.slice(-1);

if(tabCheck == '4' || tabCheck == '2' || tabCheck == '3'|| tabCheck == '1'){
hideContent();
}

$("#hideBtn").on('click', function() {
showContent();
})
$("#showBtn").on('click', function() {
hideContent();
})

// hope needs to see the content on the parties screen always, so checking if local storage contains her user id in the user13Software1 key and if so, show the content on the page
let user = localStorage.getItem('user13Software1')
if (user == '64'){
showContent();
}


function showContent(){
    $("#showBtn").show()
    $("#hideBtn").hide();
    $("#tickleDisplay").fadeIn()
    $("#caseFlagsDisplay").fadeIn()
    $("#quickAccessDisplay").fadeIn()
    $("#allTicklesDisplay").fadeIn()
    $("#attorneyContactDisplay").fadeIn()
}
function hideContent(){
    $("#hideBtn").show();
    $("#showBtn").hide();
    $("#tickleDisplay").fadeOut()
    $("#caseFlagsDisplay").fadeOut()
    $("#quickAccessDisplay").fadeOut()
    $("#allTicklesDisplay").fadeOut()
    $("#attorneyContactDisplay").fadeOut()
}


// tickleDisplay
// caseFlagsDisplay
// quickAccessDisplay
// allTicklesDisplay

Show/Hide Buttons

<div>
<img id="showBtn" style="width: 20px; height: 20px; cursor: pointer;" src="tac_images\show.png">
<img id="hideBtn" style="width: 20px; height: 20px; cursor: pointer; display: none;" src="tac_images\hide.png">
</div>