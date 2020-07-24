require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import "bootstrap";
import AOS from "aos";
import "aos/dist/aos.css";
import { setActive } from "../components/setActive";
import { DropdownMenu } from "../components/dropdownMenu";
import { SendMessage } from "../components/sendMessage";

document.addEventListener("turbolinks:load", () => {
  setActive();
  AOS.init({ delay: 250 });
  DropdownMenu.burgerLink();
  SendMessage.ajaxListen();
});
