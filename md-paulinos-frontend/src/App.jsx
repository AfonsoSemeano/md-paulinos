import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Navbar from './navbar'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
    <Navbar/>
    <a href="https://www.flaticon.com/free-icons/cart" title="cart icons">Cart icons created by Google - Flaticon</a>
    </>
  )
}

export default App
