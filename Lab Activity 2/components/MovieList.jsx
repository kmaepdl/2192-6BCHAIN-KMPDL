//Kimberly De Leon
//WD-401

import React from 'react';

class MovieList extends React.Component{
    render() {
        return (
            <div class= "flex-container">
            <div class= "wrapper">
                <h2>Movie List</h2>
                <div class="row">
                <div class="column">
                <div class="box box1"><p>Captain Marvel</p><img src="./images/cm.jpg" alt="captain"/></div>
                <div class="box box2"><p>Black Widow</p><img src="/images/bw.jpg" alt="black"/></div>
                <div class="box box3"><p>Doctor Strange</p><img src="images/ds.jpg" alt="dcotor"/></div>
            </div>
            </div>

            </div>
            </div>
        )
    }
}
export default MovieList;