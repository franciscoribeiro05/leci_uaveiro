const btnAside = document.querySelector('.aside-ua button')
const asideContent = document.querySelector('.aside-ua__content')
const modalUa = document.querySelector('.modal-ua')

btnAside.addEventListener('click', () => {
    asideContent.classList.add('aside-ua__content__scaled');
    modalUa.classList.remove('modal-ua__hide')
    btnAside.style.display = 'none';
})

modalUa.addEventListener('click', () => {
    asideContent.classList.remove('aside-ua__content__scaled');
    modalUa.classList.add('modal-ua__hide')
    btnAside.style.display = ('inline')
})


function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("titulo").style.fontSize = "30px";
  } else {
    document.getElementById("titulo").style.fontSize = "90px";
  }
}

window.onscroll = function() {scrollFunction()};