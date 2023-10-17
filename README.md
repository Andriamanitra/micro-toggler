# toggler

Simple plugin to toggle some options

## Installation

Simply clone this repository to your micro plugins directory:
`git clone https://github.com/Andriamanitra/micro-toggler $HOME/.config/micro/plug/toggler`


## Usage

- `toggle softwrap` – toggles global "softwrap" setting
- `togglelocal softwrap` – toggles setting "softwrap" locally (only affects current buffer)


## Adding key bindings

Key bindings can be added in $HOME/.config/micro/bindings.json

For example:

    { "Alt-t": "command:togglelocal softwrap" }
