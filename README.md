# CLI Demo Helper

## 🚀 Examples

![Demo with minimal setup](./assets/demo-minimal.gif)

> Ref: [example-minimal.sh](/example-minimal.sh) file used in above example

```bash
#!/usr/bin/env bash

# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"

comment "Starting demo with demo-helper..."
execute "ls -la"

comment_r "Special characters are written as is, such as '\\~!!@(*#@)"
comment_g "It is simple to use, you just need to source the helper script."
comment_b "No extra tool needed."

comment "End of demo!"
```

## ✨ Usage

You need to `source` the `demo-helper.sh` file, and use provided functions.

The simplest approach is to copy the `demo-helper.sh` file to your local, by running something like below.

```bash
curl -sSL https://raw.githubusercontent.com/rytswd/cli-demo-helper/main/demo-helper.sh \
    > demo-helper.sh
```

With that, you can have the following snippet in your shell script to set up functions.

```bash
# shellcheck source=./demo-helper.sh
source "$(dirname "$0")/demo-helper.sh"
```

## 🎮 Functions

<!-- == imptr: function-list / begin from: ./docs/functions.md#[list] == -->

| Function                 | Description                                                |
| ------------------------ | ---------------------------------------------------------- |
| `comment "abc"`          | Write comment like string, with preceding character of `#` |
| `comment_r "abc"`        | Write comment the same way, with red text                  |
| `comment_g "abc"`        | Write comment the same way, with green text                |
| `comment_b "abc"`        | Write comment the same way, with blue text                 |
| `comment_w "abc"`        | Write comment the same way, with white text                |
| `execute "some_command"` | Write string as command, and execute by `eval`             |

<!-- == imptr: function-list / end == -->

## 🧩 Supported Variables

<!-- == imptr: variable-list / begin from: ./docs/variables.md#[list] == -->

| Function                 | Description                                       | Default        |
| ------------------------ | ------------------------------------------------- | -------------- |
| `demo_helper_type_speed` | Imitated type speed in character-per-min notation | 1200           |
| `demo_helper_prompt`     | Prompt for each line like `PS1`                   | `$ ` in yellow |

<!-- == imptr: variable-list / end == -->
