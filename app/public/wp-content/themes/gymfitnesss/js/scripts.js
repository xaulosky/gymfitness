jQuery(document).ready( $ => {
    $('.site-header .menu-principal .menu').slicknav({
        label: '',
        appendTo: '.site-header'
    });

    // Agregamos el slider
    if($('.listado-testimoniales').length > 0){

        $('.listado-testimoniales').bxSlider({
            auto: true,
            mode: 'fade',
            controls: false
        });
    }
    //Mapa de Leaftet}
    if($('#direccion').length > 0){

        const lat = document.querySelector('#lat').value;
        const lng = document.querySelector('#lng').value;
        const direccion = document.querySelector('#direccion').value;
        
        if(lat && lng && direccion){
            var map = L.map('mapa').setView([lat, lng], 15);
            
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);
            
            L.marker([lat, lng]).addTo(map)
            .bindPopup(direccion)
            .openPopup(); 
        }
    }
        
    });

// Agrega posición fija en el header añ hacer scroll
window.onscroll = () => {
    const scroll = window.scrollY;
    const headerNav = document.querySelector('.barra-navegacion');
    const documentBody = document.querySelector('body');
    if(document.querySelector(".home")){
        if(scroll > 250){
            headerNav.classList.add('fixed-top');
            documentBody.classList.add('ft-activo');
        }else{
            headerNav.classList.remove('fixed-top');
            documentBody.classList.remove('ft-activo');
        }
    }else{
        if(scroll > 177){
            headerNav.classList.add('fixed-top');
            documentBody.classList.add('ft-activoo');
        }else{
            headerNav.classList.remove('fixed-top');
            documentBody.classList.remove('ft-activoo');
        }
    }
    
}