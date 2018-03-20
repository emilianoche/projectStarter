import React from 'react';
import { test } from './Prueba.styl';
import logo from 'Assets/devLogo.png';

export default (props) => <div className={test}>Hola
  <img src={logo} />
  <div>
    {props.value}
    ---
    Vamos
  </div>
</div>
