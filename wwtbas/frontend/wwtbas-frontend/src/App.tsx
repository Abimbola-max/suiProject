import { useState } from 'react'
import Coins from './components/Faucet'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Coins />
      </div>
    </>
  )
}

export default App
