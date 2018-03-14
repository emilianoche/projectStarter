import React from 'react';
import { test } from './Prueba.styl';
import logo from 'Assets/devLogo.png';
import docker from 'Assets/nyan_docker_whale_gfycat.gif';

export default () => <div className={test}>Hola
  <img src={logo} />
  <img src={docker} />
  <div>
      Que onda, alan?
  </div>
</div>
