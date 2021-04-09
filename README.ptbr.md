# esx_waterlost

<p align="center">
  <a href="https://github.com/brouznouf/fivem-mysql-async/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  </a>
</p>

`esx_waterlost` é um resource para [FiveM](https://fivem.net) que detecta se o jogador está/caiu na água e remove os itens que você quiser.

[![Showcase](https://yt-embed.herokuapp.com/embed?v=vCr-2LJdliA)](https://youtu.be/vCr-2LJdliA)

## Instalação

1. Certifique-se que os artefatos do seu servidor ([windows](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master)
   ou [linux](https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master)) estão atualizados.
2. Extraia o último arquivo zip em [releases](https://github.com/vWernay/esx_perderitens/releases) na sua pasta `resources`.
3. Adicione `ensure esx_waterlost` no seu `server.cfg`.
4. Ajuste a [configuração](#configuração) do resource no `config.lua`.

## Configuração

* **locale** - O idioma desejado.
* **Money** - Defina `true` se quiser que o jogador perca todo o `Dinheiro` quando entrar na água ou `false` caso não queira.
* **BlackMoney** - Defina `true` se quiser que o jogador perca todo o `Dinheiro Sujo` quando entrar na água ou `false` caso não queira.
* **Items** - Os itens que você deseja que o jogador perca ao entrar na água.
    * **give_burn** - Dar item após cair na agua? Se sim coloque o `item` a ser dado, se não, coloque `false`.

## Dependências

* [es_extended-v1.1/v1.2-final](https://github.com/esx-framework/es_extended/tree/v1-final)
