const SendMessage = {

  ajaxListen() {
    const button = document.querySelector('.my-button')
    document.body.addEventListener('ajax:beforeSend', () => {
      SendMessage.sending(button)})
    document.body.addEventListener('ajax:success', () => {
      SendMessage.success(button)})
  },

  sending(button) {
    button.value = "";
    button.classList.remove('hover-big');
    button.classList.add('rotating-disc');
  },

  success(button) {
    const form = document.getElementById('new_contact');
    form.reset()
    button.disabled = true;
    button.value = "Message sent";
    button.classList.remove('rotating-disc')
    button.classList.add('button-disabled')
  }
}

export { SendMessage };
