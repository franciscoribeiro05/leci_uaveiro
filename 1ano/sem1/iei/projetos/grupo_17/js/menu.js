const btnMenu = document.querySelector('.btn-menu svg')
const navHeader = document.querySelector('.nav-header')
const btnCloseMenu = document.querySelector('.btn-close-menu')

btnCloseMenu.addEventListener('click', () => {
    navHeader.classList.remove('nav-header__show')
})

btnMenu.addEventListener('click', () => {
    navHeader.classList.add('nav-header__show')
})

navHeader.addEventListener('click', () => {
    navHeader.classList.remove('nav-header__show')
})

