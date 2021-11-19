document.addEventListener('turbolinks:load', () => {
  console.log('plz')
  if (document.querySelector('.main-banner')) {
    nav = document.querySelector('.navbar')
    search = document.querySelector('.nav-power-search');
    cards = document.querySelector('.cards-container');

    window.addEventListener('scroll', (e) => {
      console.log(window.scrollY)
      if (!nav.classList.contains('sticky-nav') && window.scrollY >= 580) {
        search.classList.remove('fade-in');
        nav.classList.remove('fade-in');
        nav.classList.add('sticky-nav') ;
        nav.classList.add('hidden')
        nav.classList.add('fade-in');
        search.classList.add('fade-in');
        nav.classList.remove('hidden')
        search.classList.remove('hidden')
        cards.classList.add('margin-add');
      }
      if (nav.classList.contains('sticky-nav') && window.scrollY < 580) {
        nav.classList.remove('sticky-nav');
        nav.classList.remove('fade-in');
        search.classList.add('hidden')
        cards.classList.remove('margin-add');
      }
    })
  }
})
