import * as React from 'react';
import { Route } from 'react-router';
import Layout from './components/Layout';
import Home from './components/Home';
import Game from './components/Games/Game';
import Collar from './components/Collars/Collar';

import './custom.css'

export default () => (
    <Layout>
        <Route exact path='/' component={Home} />
        <Route path='/games' component={Game} />
        <Route path='/collars' component={Collar} />
    </Layout>
);
