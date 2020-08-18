import * as React from 'react';
import {connect} from 'react-redux';

const Home = () => (
    <div>
        <h1>ShohokuCollars</h1>
        <p>the single place to log your basketball games</p>
        <h3>Book a game</h3>
        <h3>New collar sign up</h3>
        <h3>Log a game</h3>
        <h3>Collar Top up</h3>
        <h3>Check Collar Credits</h3>
    </div>
);

export default connect()(Home);
