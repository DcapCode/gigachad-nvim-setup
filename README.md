# Starter GIGACHAD neovim setup

Are you tired of being a cry baby, confined to the limitations of bloated text
editors like VSCode, Atom, or Sublime? Are you ready to level up, embrace the
true power of text editing, and feel aswell as become a GIGACHAD in the world
of coding and text manipulation? Welcome to the era of Neovim!

## Embrace the GIGACHAD Within

It's time to unleash your inner GIGACHAD! Put away those baby toys, get your
knee-high socks on, and dye your hair blue because you're about to embark on
a journey to text editing greatness. Neovim is not just a text editor; it's a
way of life for those who demand nothing less than greatness from their coding
environment. Say goodbye to the sluggish, memory-hungry IDEs and
resource-hogging editors that turn you into a frustrated cry baby every time
you try to get work done.

With Neovim, you're stepping into a realm of pure efficiency, speed, and
customization. It's time to put down the baby bottle and pick up a robust,
muscular, and battle-tested text editor that will turn you into a GIGACHAD of
productivity.

## What the heck is Neovim?

Neovim is a modern, highly extensible, and feature-packed text editor inspired
by the legendary Vim, but it doesn't stop there. It's Vim's bigger, stronger,
and more versatile sibling, designed for developers and power users who seek
the ultimate text editing experience.

In this guide, we'll take you through the steps of setting up your own Starter
GIGACHAD Neovim environment. You'll learn how to harness the raw power of Neovim
and mold it into your personal coding fortress. No more crying over sluggish
performance, excessive bloat, or lackluster features. It's time to embrace
Neovim and become a coding GIGACHAD!

Let's get started on your journey to text editing excellence.

## What the heck does this setup include?

This Neovim configuration is your ticket to achieving a text editing experience
that will make you feel like a coding god. It combines a set of carefully
selected plugins and keymaps to enhance your productivity and streamline your
workflow. Here's what you'll find in this setup:

### Plugins
#### 1. Package Manager: Lazy.nvim
Lazy.nvim is the secret sauce that keeps your Neovim configuration organized 
and up-to-date. It simplifies the process of managing and installing plugins, 
allowing you to focus on what you do best: writing code. With Lazy.nvim, 
you won't need to break a sweat to maintain your plugin ecosystem.
##### https://github.com/folke/lazy.nvim
#### 2. Harpoon
Harpoon is your trusty companion for quick file navigation and 
project management. It allows you to effortlessly switch between open projects,
files, and directories, making the task of juggling multiple coding projects
a breeze. No more digging through your file system - Harpoon keeps everything
just a keypress away.
##### https://github.com/ThePrimeagen/harpoon
#### 3. LSP (Language Server Protocol)
LSP integration is your path to supercharged code intelligence. This setup
utilizes the power of LSP to provide features like autocompletion,
error checking, and code navigation. It's like having a coding assistant that
anticipates your needs and provides real-time feedback to help you write code
more efficiently.
##### https://github.com/VonHeikemen/lsp-zero.nvim
#### 4. Telescope
Telescope is your ultimate tool for finding, filtering, and acting on
information within your Neovim environment. It's not just a file finder; it's a
versatile tool for searching through files, projects, and more. Whether you're
looking for a specific piece of code or a file deep in your project structure,
Telescope has your back.
##### https://github.com/nvim-telescope/telescope.nvim
#### 5. Themes
The theme selection in this setup is all about personalization. Choose from a
variety of eye-catching and well-crafted themes to make your coding environment
truly yours. Whether you prefer a dark or light theme, there's something here
to suit your style.
I have no source for this. The current one installed is rose-pine but you can
choose whatever, just google for it
##### https://github.com/rose-pine/neovim
#### 6. Treesitter
Treesitter is the magic behind accurate syntax highlighting and code analysis.
It provides context-aware code understanding, allowing for precise and reliable
syntax highlighting, indentation, and more. 
No more squinting at your code - Treesitter ensures it looks just right.
##### https://github.com/nvim-treesitter/nvim-treesitter
#### 7. Undotree
Undotree is your lifeline when you need to undo or redo your actions in Neovim.
It offers a visual representation of your undo history, making it easier to
navigate through changes and recover past states of your code. No more fear of
irreversible mistakes - Undotree keeps your history intact.
##### https://github.com/mbbill/undotree
With these plugins and configurations, your Neovim setup will transform into a
coding sanctuary, where you have the tools and features needed to code
efficiently, navigate projects seamlessly, and maintain full control over your
coding history.

## Understanding Vim Modes

Vim, a powerful and highly customizable text editor, operates in three 
fundamental modes that give you control over different aspects of your editing 
experience. These modes are:
### 1. Normal Mode
Normal mode is the default mode when you launch Vim. In this mode, you navigate
through your text and perform various editing tasks. You can move the cursor, 
delete, copy, paste, search, and more. It's your control center for issuing 
commands and moving around your document.

Entering Normal Mode: You're often in Normal mode by default when you open a 
file in Vim. To make sure you're in Normal mode, press the Esc key if you're 
not sure.

### 2. Insert Mode

Insert mode is where you actually type or insert text into your document. 
It's the mode you're in when you want to add content to your file. 
In Insert mode, your keyboard behaves like a regular text editor.

Entering Insert Mode: To enter Insert mode from Normal mode, press i to start 
inserting text before the cursor, or a to append text after the cursor. To 
switch back to Normal mode, press Esc.

### 3. Visual Mode

Visual mode allows you to select and manipulate text visually. You can 
highlight text in various ways, such as character-wise, line-wise, or 
block-wise selection. This is handy for copying, cutting, or applying commands 
to selected text.

Entering Visual Mode: To enter Visual mode from Normal mode, press v to start 
selecting text character-wise, or V to select lines, or Ctrl-v for block-wise 
selection. To exit Visual mode, press Esc.

Understanding and mastering these three modes is key to efficiently using Vim 
for text editing and coding. By seamlessly transitioning between these modes, 
you can perform complex editing tasks with precision and speed.

## Vim key mappings and commands (non plugin things)

- **Exiting Insert Mode**: Press `jk` to exit insert mode quickly.
- **File Explorer**: Use `<Space>pv` to open the file explorer.
- **Move Text Up and Down**: In visual mode, `J` moves selected text one line down, and `L` moves it one line up.
- **Append Lines**: In normal mode, `J` combines the current line with the one below without moving the cursor.
- **Half-Page Scrolling**: `<C-d>` and `<C-u>` in normal mode scroll half a page down and up while keeping the cursor centered.
- **Search Terms Placement**: After searching with `n` or `N`, this keeps the search result in the middle of the screen for better visibility.
- **Keeping Paste Register**: In visual mode, `<Space>p` pastes text while keeping the content in the paste register.
- **Copy to System Clipboard**: Use `<Space>y` and `<Space>Y` to copy selected text to the system clipboard.
- **Delete Text Without Registers**: In normal mode, `<Space>d` deletes text without storing it in any registers.
- **Swap Between Projects**: In normal mode, `<C-f>` opens a new tmux window for project management.
- **Code Formatting**: Press `<Space>f` in normal mode to trigger code formatting using the Language Server Protocol.
- **Quick Navigation Between Errors**: Use `<C-k>` and `<C-j>` in normal mode to navigate between errors using the quickfix list.
- **Replace Current Word**: In normal mode, `<Space>s` initiates a search and replace for the current word.
- **Make File Executable**: In normal mode, `<Space>x` makes the current file executable.
- **Move and Resize Windows**: Use `<Shift> + Arrow Keys` to move windows and `<Ctrl> + Arrow Keys` to resize them.
- **Delete Buffers**: Use `<Space>db` to delete the current buffer, `<Space>do` to delete others, and `<Space>da` to delete all buffers.
- **Navigate Between Open Buffers**: Use `<Shift> + 1` to go to the next buffer and `<Shift> + h` to go to the previous buffer.

## Plugin key mappings
leader is space
### Harpoon
- **Add Current File to Mark**: In normal mode, press `<leader>a` to add the current file to the list of marked files. Marking files can help you keep track of important or frequently accessed files.

- **Toggle Quick Menu**: Press `<C-e>` in normal mode to toggle the quick menu. The quick menu is a handy tool for quick access to various actions or functionalities.

- **Navigate Files**: In normal mode, use the following key combinations to navigate files within the quick menu:
  - `<C-h>`: Navigate to the previous file.
  - `<C-t>`: Navigate to the next file.
  - `<C-n>`: Navigate to the third file.
  - `<C-s>`: Navigate to the fourth file.

These custom key mappings and commands are designed to enhance your workflow and provide quick access to specific actions, such as marking files, toggling the quick menu, and navigating between files in the quick menu.

### Undotree
- **Toggle Undo Tree**: In normal mode, press `<leader>u` to toggle the Undo Tree. The Undo Tree is a powerful feature that allows you to visualize and navigate the history of changes made to your document. It's a handy tool for reverting or redoing changes with precision.

This key mapping is designed to provide quick access to the Undo Tree, enhancing your ability to manage and review your editing history in Neovim.

### LSP
- **Select Previous Item**: Press `<Ctrl-p>` to navigate and select the previous item in the autocompletion list.

- **Select Next Item**: Use `<Ctrl-n>` to move to and select the next item in the autocompletion list.

- **Confirm and Select**: Press `<Ctrl-y>` to confirm and select the currently highlighted autocompletion item.

- **Complete**: Use `<Ctrl-space>` to trigger autocompletion and display a list of suggested items.

- **Go to Definition**: Press `gd` in normal mode to jump to the definition of the symbol under the cursor using LSP.

- **Hover for Information**: Use `K` in normal mode to display hover information for the symbol under the cursor.

- **Workspace Symbol Search**: Press `<Leader>vws` in normal mode to perform a workspace-wide symbol search using LSP.

- **Open Diagnostic Float Window**: Use `<Leader>vd` in normal mode to open the diagnostic message in a floating window.

- **Navigate to Next Diagnostic**: Press `[d` in normal mode to navigate to the next diagnostic message.

- **Navigate to Previous Diagnostic**: Use `]d` in normal mode to navigate to the previous diagnostic message.

- **Code Actions**: Press `<Leader>vca` in normal mode to trigger available code actions for the current context using LSP.

- **Find References**: Use `<Leader>vrr` in normal mode to find references to the symbol under the cursor.

- **Rename Symbol**: Press `<Leader>vrn` in normal mode to rename the symbol under the cursor using LSP.

- **Signature Help**: In insert mode, press `<Ctrl-h>` to request signature help for the function or method you are typing.

These key mappings and commands are tailored for LSP integration, making it easier to navigate your code, access diagnostic information, and perform code actions while coding in Neovim.
## Debugger key mappings
- **Continue Debugging**: Press `<F5>` to continue the debugging process.

- **Step Over**: Use `<F10>` to step over the current line of code.

- **Step Into**: Press `<F11>` to step into the code to debug it line by line.

- **Step Out**: Use `<F12>` to step out of the current function or code block.

- **Toggle Breakpoint**: Press `<Leader>b` to toggle a breakpoint at the current cursor position.

- **Set Breakpoint with Condition**: Use `<Leader>B` to set a breakpoint with a specified condition. You'll be prompted to enter the condition.

- **Set Log Point**: Press `<Leader>lp` to set a log point with a custom message. You can enter the message when prompted.

- **Open Debugger REPL**: Use `<Leader>dr` to open the debugger's Read-Eval-Print Loop (REPL) for interactive debugging.

- **Run Last Debug Configuration**: Press `<Leader>dl` to run the last-used debug configuration.

These key mappings are designed to streamline the debugging process in Neovim, allowing you to efficiently navigate and interact with your code during debugging sessions.
## File structure
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── core
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   ├── helpers
│   │   ├── buffers.lua
│   │   ├── colorscheme.lua
│   │   └── keys.lua
│   └── plugins
│       ├── harpoon.lua
│       ├── lsp.lua
│       ├── telescope.lua
│       ├── themes.lua
│       ├── treesitter.lua
│       └── undotree.lua
└── README.md
## File structure description
- **init.lua**: This is a Lua configuration file for Neovim. It's the entry point for your Neovim setup and contains various configurations and settings.

- **lazy-lock.json**: This JSON is related to your plugin management.

- **lua/core**: This directory contains core configurations for your Neovim setup.
  - **keymaps.lua**: Contains key mappings and custom shortcuts that enhance your editing experience.
  - **lazy.lua**: This file is related to plugin management or lazy loading of plugins.
  - **options.lua**: Includes various options and settings for Neovim.

- **lua/helpers**: This directory contains helper functions and utilities to simplify and streamline your Neovim setup.
  - **buffers.lua**: Includes functions for managing buffers, such as deleting or switching between them.
  - **colorscheme.lua**: Customizing the color scheme of your Neovim environment.
  - **keys.lua**: Contains utility functions for working with key mappings and shortcuts.

- **lua/plugins**: This directory contains configuration files for various Neovim plugins.
  - **harpoon.lua**: Configuration for the Harpoon plugin, which aids in project navigation and file management.
  - **lsp.lua**: Configuration for Language Server Protocol (LSP) integration, enabling code intelligence and analysis.
  - **telescope.lua**: Configuration for the Telescope plugin, which enhances file searching and navigation.
  - **themes.lua**: Likely contains custom themes and colorscheme configurations.
  - **treesitter.lua**: Configuration for the Treesitter plugin, which provides advanced syntax highlighting and code analysis.
  - **undotree.lua**: Configuration for the Undotree plugin, which helps you visualize and navigate your undo history.
