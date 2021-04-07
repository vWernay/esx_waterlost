# esx_perderitens

<p align="center">
  <a href="https://github.com/brouznouf/fivem-mysql-async/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  </a>
  <a href="https://forum.cfx.re/">
    <img src="https://forum.cfx.re/uploads/default/original/4X/f/7/b/f7bd789d9d3ad55ff91dc57979e485e99e1a5273.png" alt="Chat">
  </a>
</p>

`esx_perderitens` é um resource para [FiveM](https://fivem.net) que detecta se o jogador está na água e remove os itens que você quiser.

[![Showcase](https://yt-embed.herokuapp.com/embed?v=vCr-2LJdliA)](https://youtu.be/vCr-2LJdliA)

## Instalação

1. Certifique-se que os artefatos do seu servidor ([windows](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master)
   ou [linux](https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master)) estão atualizados.
2. Extraia o último arquivo zip em [releases](https://github.com/vWernay/esx_perderitens/releases) na sua pasta `resources`.
3. Adicione `start esx_perderitens` no seu `server.cfg`.
4. Ajuste a [configuração](#configuração) do resource no `config.lua`.
4. Ajuste o [idioma](#idioma) do resource no `locales/`.

## Configuração

* **locale** - O idioma desejado.
* **Money** - Defina `true` se quiser que o jogador perca todo o `Dinheiro` quando entrar na água ou `false` caso não queira.
* **BlackMoney** - Defina `true` se quiser que o jogador perca todo o `Dinheiro Sujo` quando entrar na água ou `false` caso não queira.
* **Items** - Os itens que você deseja que o jogador perca ao entrar na água.
    * **encoding** - The file format (`png`, `jpg` or `webp`)
    * **quality** - The image quality from 0.0 to 1.0.

## Dependências

* [es_extended-v1.1/v1.2-final](https://github.com/esx-framework/es_extended/tree/v1-final)