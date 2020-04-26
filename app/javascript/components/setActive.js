const addActiveClass = (elems) => {
  elems.forEach(elem => {
    elem.classList.add("active");
  })
};

const findElements = (page) => {
  if (page != "") {
    return document.querySelectorAll(`.${page}`);
  } else {
    return document.querySelectorAll('.home')
  }
};

const findPage = () => {
  return document.location.pathname.substr(1);
};

// finds current page and element

const setActive = () => {
  const page = findPage()

  const elems = findElements(page)
  addActiveClass(elems)
};

export { setActive }
