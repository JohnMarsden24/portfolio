const ExpandDetails = {
  expandButtons() {
    const buttons = document.querySelectorAll('.toggle-button')
    buttons.forEach(button => {
      button.addEventListener('click', ExpandDetails.toggleExpand)
    });
  },

  toggleExpand() {
    const id = event.currentTarget.dataset.id;
    const section = document.querySelector(`[data-id='details_${id}']`);
    const text = document.getElementById(`text_${id}`);
    const img = document.getElementById(`img_${id}`);
    section.classList.toggle('expand');
    img.classList.toggle('animate-img');
    text.classList.toggle('animate-text');
  },
}

export { ExpandDetails }
