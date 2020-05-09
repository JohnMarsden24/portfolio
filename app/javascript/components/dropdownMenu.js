const DropdownMenu = {
  burgerLink() {
    const button = document.querySelector('.burger-menu')
    button.addEventListener('click', () => DropdownMenu.showMenu(button))
  },

  showMenu(button) {
    const menu = document.querySelector('.burger-dropdown');
    const inner = document.querySelector('.burger-menu-inner');
    menu.classList.toggle('expand');
    inner.classList.toggle('rotate-inner');
    button.classList.toggle('rotate-outer');
  },
}

export { DropdownMenu }
