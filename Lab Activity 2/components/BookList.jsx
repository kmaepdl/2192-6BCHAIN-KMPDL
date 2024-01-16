//Kimberly De Leon
//WD-401

import React from 'react';

class BookList extends React.Component{
    render() {
        return (
            <div class= "flex-container">
            <div class= "wrapper">
                
                <h2>Book List</h2>
                <div class="row">
                <div class="column">
                <div class="box box1"><p>It Ends With Us</p><img src="./images/IEWU.jpg" alt="it ends"/></div>
                <div class="box box2"><p>Atomic Habits</p><img src="/images/AH.jpg" alt="atomic"/></div>
                <div class="box box3"><p>The Strength in Our Scars</p><img src="images/TSIOS.jpg" alt="strength"/></div>
            </div>
            </div>

            </div>
            </div>
        )
    }
}
export default BookList;