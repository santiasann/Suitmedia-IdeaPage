window.addEventListener('scroll', function(){
    let header= this.document.querySelector('.header, .navbar');
    let scrollPosition = this.window.scrollY;

    if(scrollPosition>10){
        header.classList.add('active');
        navbar.classList.add('active');
    }
    else{
        header.classList.remove('active');
        navbar.classList.remove('active');
    }
})