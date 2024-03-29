import React from "react";
import companyLogo from './assets/Logotipo-md-paulinos-horizontal.jpg';
import cartIcon from './assets/shopping-cart.png';
import { Link } from "react-router-dom";

function TopNavbar() {
    return     <div className="navbar bg-primary">
    <div className="flex-1 mt-2.5 ml-40">
      <img src={companyLogo} className="max-h-14"/>
    </div>
    <div className="flex-none mr-40">
      <div className="dropdown dropdown-end">
        <div tabIndex={0} role="button" className="btn btn-ghost btn-circle w-14 h-14">
          <div className="indicator">
            {/*<svg xmlns="http://www.w3.org/2000/svg" className="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" /></svg>
            */}
            <img src={cartIcon} className="w-8" />
            <span className="badge badge-sm indicator-item text-white" style={{ backgroundColor: '#79292a', borderWidth: 0}}>0</span>
          </div>
        </div>
        <div tabIndex={0} className="mt-3 z-[1] card card-compact dropdown-content w-52 bg-base-100 shadow">
          <div className="card-body">
            <span className="font-bold text-black text-lg">0 Items</span>
            <span className="text-black">Subtotal: $999</span>
            <div className="card-actions">
              <button className="btn btn-neutral btn-block">View cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
}

function SecondNavbar() {
  return     <div className="flex bg-secondary shadow-2xl">
  <div className="flex justify-between w-full ml-60 mr-60">
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Utensílios de Cozinha</Link>
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Casa de Banho</Link>
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Sala</Link>
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Jogos de tabuleiro</Link>
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Decoração</Link>
    <Link to={`product-list`} className="btn btn-ghost btn-sm text-black rounded-none">Veículos em Miniatura</Link>
  </div>
</div>
}

function Navbar() {
  return <>
    <TopNavbar/>
    <SecondNavbar/>
  </>
}


export default Navbar;