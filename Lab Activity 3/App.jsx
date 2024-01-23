import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

import Demo1 from './components/Conditional-Demo-1';
import Demo2 from './components/Conditional-Demo-2';
import Demo3 from './components/Conditional-Demo-3';
import Demo4 from './components/Conditional-Demo-4';


function App() {
 //const [count, setCount] = useState(0)

  return (
    
      <div>
      <Demo1/>
      <Demo2/>
      <Demo3/>
      <Demo4/>
    </div>
  )
}

export default App
