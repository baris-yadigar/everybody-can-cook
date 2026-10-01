const translate = document.querySelector('#google_translate_element')

function googleTranslateElementInit() {
    new google.translate.TranslateElement(
        {pageLanguage: 'de', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, translate);
}

function search() {
    const searchBtn = document.querySelector('.second-header_search')
    const searchInput = document.querySelector('.search-input')
    const closeBtn = document.querySelector('.search-btn')
    const textCloseBtn = document.querySelector('.input-close')
    const header = document.querySelector('.second-header')
    if (textCloseBtn) {
        textCloseBtn.addEventListener('click', function () {
            searchInput.value = ''
            searchInput.focus()
        })
    }
    if (searchBtn) {
        searchBtn.addEventListener('click', function () {
            searchInput.classList.toggle('active')
            closeBtn.classList.toggle('active')
            textCloseBtn.classList.toggle('active')
            header.classList.toggle('height-control')
            searchInput.focus()
        })
    }
    if (closeBtn) {
        closeBtn.addEventListener('click', function () {
            searchInput.classList.remove('active')
            // searchBtn.classList.add('active')
            closeBtn.classList.remove('active')
            textCloseBtn.classList.remove('active')
            header.classList.remove('height-control')
            document.querySelector('.second-header_ul').classList.remove('active-bar')
            document.querySelector('.search-container').classList.remove('active-bar')
        })
    }
    if (searchInput) {
        searchInput.addEventListener('keypress', function (event) {
            if (event.key === 'Enter') {
                event.preventDefault()
                searchInput.classList.remove('active')
                closeBtn.classList.remove('active')
                closeBtn.click()
                textCloseBtn.classList.remove('active')
            }
        })
    }
}
search()


function navbarMenu() {
    const menuList = document.querySelector(".second-header_ul");
    const navbar = document.querySelector('.nav-bar')
    if (navbar != null) {
        navbar.addEventListener('click', function () {
            if (navbar) {
                menuList.classList.toggle('active-bar')
                document.querySelector('.search-container').classList.toggle('active-bar')
                const googEl = document.querySelector('#google_translate_element').classList.toggle('active-translate')
            }
        })
    }
}
navbarMenu()

function slider() {
    let slideIndex = 0

    function showSlides() {
        const slides = document.querySelectorAll(".about-pic_content")
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none"
        }
        if (slides.length > 0) {
            slideIndex++
            if (slideIndex > slides.length) {slideIndex = 1}
            slides[slideIndex-1].style.display = "block"
            setTimeout(showSlides, 3000)
        }
    }
    showSlides()
}
slider()
