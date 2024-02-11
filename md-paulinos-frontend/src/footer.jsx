import React from "react";
import companyIcon from './assets/Logotipo-md-paulinos-vertical-removebg.png';

function Footer() {
    return <>
        <footer className="footer p-10 bg-base-200 text-base-content flex justify-around">
  <nav>
    <h6 className="footer-title">Empresa</h6> 
    <a className="link link-hover text-black hover:text-m-blue">Sobre nós</a>
    <a className="link link-hover text-black hover:text-m-blue">Contactos</a>
    <a className="link link-hover text-black hover:text-m-blue">Empregos</a>
    <a className="link link-hover text-black hover:text-m-blue">Notícias</a>
  </nav> 
  <nav>
    <h6 className="footer-title">Legal</h6> 
    <a className="link link-hover text-black hover:text-m-blue">Termos de Uso</a>
    <a className="link link-hover text-black hover:text-m-blue">Política de Privacidade</a>
    <a className="link link-hover text-black hover:text-m-blue">Política de Cookies</a>
  </nav>
</footer>

<footer className="footer px-10 py-4 border-t bg-base-200 text-base-content border-base-300 justify-between">
    <aside className="items-center grid-flow-col">
        <img src={companyIcon} className="max-h-8"/>
        <p>MD Paulinos <br/>Trabalhos com Madeiras</p>
    </aside>
    <a className="text-xs text-black hover:text-m-blue" href="https://www.flaticon.com/free-icons/cart" title="cart icons">Cart icons created by Google - Flaticon</a>

  <nav className="md:place-self-center md:justify-self-end">
    <div className="grid grid-flow-col gap-4">
      <a><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" className="fill-current text-black hover:text-blue-500 cursor-pointer"><path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"></path></svg></a>
      <a><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="28" height="28" viewBox="0 0 28 28" className="fill-current relative bottom-0.5 right-0.5 text-black hover:text-red-500 cursor-pointer"><path d="M 9.9980469 3 C 6.1390469 3 3 6.1419531 3 10.001953 L 3 20.001953 C 3 23.860953 6.1419531 27 10.001953 27 L 20.001953 27 C 23.860953 27 27 23.858047 27 19.998047 L 27 9.9980469 C 27 6.1390469 23.858047 3 19.998047 3 L 9.9980469 3 z M 22 7 C 22.552 7 23 7.448 23 8 C 23 8.552 22.552 9 22 9 C 21.448 9 21 8.552 21 8 C 21 7.448 21.448 7 22 7 z M 15 9 C 18.309 9 21 11.691 21 15 C 21 18.309 18.309 21 15 21 C 11.691 21 9 18.309 9 15 C 9 11.691 11.691 9 15 9 z M 15 11 A 4 4 0 0 0 11 15 A 4 4 0 0 0 15 19 A 4 4 0 0 0 19 15 A 4 4 0 0 0 15 11 z"></path></svg></a>

    </div>
  </nav>
</footer>
    </>
}

export default Footer;