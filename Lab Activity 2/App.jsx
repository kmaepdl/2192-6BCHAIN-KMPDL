import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

import TodoList from './components/TodoList';
import BookList from './components/BookList';
import MovieList from './components/MovieList';

function App() {
  //const [count, setCount] = useState(0)

  return (
    <div>
<BookList/>
<MovieList/>
<TodoList/>
</div>
  )
}

export default App
