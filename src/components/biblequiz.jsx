import React from 'react';


const ListItem = ({ item, status }) => {
const backgroundColor = status === 'true' ? 'green' : status === 'on-hand' ? 'red' : '';

return (
    <li style={{ backgroundColor, listStyleType: 'none', padding: '8px', margin: '4px' }}>
{item} </li>
    );
};

const ListComponent = ({ list, listStatus }) => {
    return (
        <ul>
            {list.map((item, index) => (
            <ListItem key={index} item={item} status={listStatus[index]} />
))}

        </ul>

    );
};

const biblequiz = () => {
/*const state1 = ('The Bible consists of the old and New Testaments.')
const state2 = ('Moses led the Israelites out of Egypt.')
const state3 = ('The Sermon on the Mount is found in the Book of Luke.')*/
const myList = ['The Bible consists of the old and New Testaments.', 'Moses led the Israelites out of Egypt.', 'The Sermon on the Mount is found in the Book of Luke'];
const myStatusList = ['false', 'false'];

return (
   /* <div>
        <ListComponent list = {state1} listStatus={myStatusList}/>
        <ListComponent list = {state2} listStatus={myStatusList}/>
        <ListComponent list = {state3} listStatus={myStatusList}/>
        <ListComponent list = {myList} listStatus={myStatusList}/>
    </div>
);*/
    <div>
        <ListComponent list={myList} listStatus={myStatusList} />
    </div>
    );
};

export default biblequiz;