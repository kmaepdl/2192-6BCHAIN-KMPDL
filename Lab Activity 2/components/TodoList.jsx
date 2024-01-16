//Kimberly De Leon
//WD-401

import React from 'react';

class TodoList extends React.Component{
    render() {
        return (
            <div class= "flex-container">
            <div class= "wrapper">
                <h2>To-do List</h2>
                <div class="column">
                <div class="box box1"><p>Nails Appointment</p><img src="./images/nails.jpg" alt="captain"/></div>
                <div class="box box2"><p>School Requirements</p><img src="/images/work.jpg" alt="black"/></div>
                <div class="box box3"><p>Go to Work</p><img src="images/work2.jpg" alt="dcotor"/></div>
            </div>
            </div>

            </div>
            
        )
    }
}
export default TodoList;