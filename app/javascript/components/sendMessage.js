const SendMessage = {

  ajaxListen() {
    document.body.addEventListener('ajax:beforeSend', SendMessage.sending)
    document.body.addEventListener('ajax:success', SendMessage.success)
  },

  sending() {
    const button = document.querySelector('.my-button');
    button.value = "";
    button.classList.remove('hover-big');
    button.classList.remove('my-button');
    button.classList.add('rotating-disc');
    button.disabled = true;
  },

  success() {
    const button = document.querySelector('.rotating-disc');
    const form = document.getElementById('new_contact');
    form.reset()
    button.value = "Message sent";
    button.classList.remove('rotating-disc')
    button.classList.add('button-disabled')
  }

}

export { SendMessage };
