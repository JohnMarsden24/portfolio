const notCurrent = (item, event) => {
  if (item !== event.currentTarget) {
    item.classList.remove('active');
  };
}

const removeActiveClass = (event) => {
  document.querySelectorAll('.dropdown-item').forEach(item => {
    notCurrent(item, event);
  })
}

const navbarDropdownUpdate = () => {
  document.querySelectorAll('.dropdown-item').forEach(item => {
    item.addEventListener('click', removeActiveClass);
  });
};

export { navbarDropdownUpdate }
