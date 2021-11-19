

const reviewModalHandler = () => {



  const buttons = document.querySelectorAll(".booking-button");
  const modalBody = document.querySelector('#render-form-modal-body');

  buttons.forEach((button) => {
    button.addEventListener('click', (e) => {
      const form = e.target.nextElementSibling

      console.log(form);
      modalBody.innerHTML = '';
      form.classList.toggle('hidden');
      modalBody.insertAdjacentHTML('beforebegin', form.outerHTML);
      form.classList.toggle('hidden')
    })
  })
};



export { reviewModalHandler }
