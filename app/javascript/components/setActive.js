const addActiveClass = (elems) => {
  elems.forEach(elem => {
    elem.classList.add("link-active");
  })
};

const findElements = (page) => {
  const regex = /projects\//;
  if (regex.test(page)) {
    page = "projects"
  }
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
  if (elems) {
    addActiveClass(elems)
  }
};

export { setActive }
