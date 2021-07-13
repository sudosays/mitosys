
![mitosys](./logo512.png)

_"Cell division and replication for my dotfiles"_

## Features

The proposed features for this program are:

| Argument    | Action/Name | Description                                             |
|-------------|-------------|---------------------------------------------------------|
| -c --create | Create      | Creates a backup/initialisation of the current dotfiles |
| -m [name]   | Mutate      | Modifies an existing backup, creating a branch          |
| -u          | Update      | Updates/syncs the existing strain of dotfiles           |
| -i          | Infect      | Deploys dotfiles, overwriting existing setup            |
|             |             |                                                         |

Future features:

+ config 'profiles' that layer on top of a base profile e.g.
  laptop/desktop/server

## Configuration

Each mutation has a set of setups and recipes with a list of the files needed and where they need to be placed.

An example config is:

``` json
{
  mutation-name:"trunk",
  ancestor:"",
  mitosys-version:"0.0.0"
  files: [
    {
    filename:".zshrc",
    path:"~"
    },
    {
    filename:".Xresources",
    path:"~"
    },
  ]
}
```

Deploy recipes specify how to setup a new environment (kind of like Luke Smith's
LARBS (https://github.com/LukeSmithxyz/LARBS)).  These take into account
dependencies as well as setup steps. NB! It is a GIGO (garbage in, garbage out)
system. Mangled setup scripts will result in mangled setups, but in future
perhaps some error-checking/abandonment can be done using a tmp setup folder.

Recipes are specified as scripts `.sh`.

## Installing

## How to use this package

See features

## Contributing

Please feel free to open issues/comments/requests. I cannot garuantee that I
will be super-actively developing this, but I appreciate your input nonetheless.
