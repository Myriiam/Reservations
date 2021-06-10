
let selectPlace = document.querySelector('#selectPlace');
let frmPlace = document.querySelector('#frmPlace');

selectPlace.addEventListener('change', function(e){
    e.preventDefault();
    frmPlace.submit();

    let place = selectPlace.value;
    console.log(place);
});
