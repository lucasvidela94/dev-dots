# Mi Configuración de Neovim

Este repositorio contiene mi configuración personal de Neovim, con una selección cuidadosa de plugins y ajustes personalizados para una experiencia de codificación mejorada.

## Estructura de Directorios

```
copy~/.config/nvim
├── lua
│   ├── config
│   └── plugins
│       ├── additional-plugins.lua
│       ├── dashboard.lua
│       ├── debuggin.lua
│       ├── disabled-plugins.lua
│       ├── editor-settings.lua
│       ├── file-explorer.lua
│       ├── formatters-config.lua
│       ├── languages-servers.lua
│       ├── linters-config.lua
│       ├── lsp-config.lua
│       ├── markdown-tools.lua
│       ├── obsidian-integration.lua
│       ├── ripgrep-config.lua
│       ├── statusline.lua
│       ├── symbols-outline.lua
│       ├── terminal-toggle.lua
│       ├── tmux-navigation.lua
│       ├── trouble-config.lua
│       ├── twilight-config.lua
│       ├── ui-settings.lua
│       ├── vim-be-good-config.lua
│       └── which-key-config.lua
├── yugem
├── init.lua
├── lazy-lock.json
├── lazyvim.json
└── stylua.toml
```

## Plugins

### Terminal y UI
- terminal-toggle: Permite alternar fácilmente la terminal integrada.
- statusline: Personaliza la línea de estado.
- toggleterm.nvim: Terminal flotante y toggle mejorado.
- nvim-tmux-navigation: Navegación fluida entre Neovim y Tmux.
- lualine.nvim: Línea de estado configurable y extensible.
- incline.nvim: Muestra información en la línea de número.
- noice.nvim: Reemplaza la UI de mensajes, cmdline y popupmenu.
- nvim-notify: Sistema de notificaciones elegante.

### Desarrollo y Lenguajes
- vim-rescript, tree-sitter-rescript: Soporte para ReScript.
- go.nvim: Herramientas de desarrollo para Go.
- nvim-lspconfig: Configuraciones de Language Server Protocol.
- nvim-dap: Protocolo de depuración para Neovim.

### Control de Versiones
- git.nvim: Integración de Git en Neovim.

### Navegación y Búsqueda
- telescope.nvim: Buscador y selector fuzzy.
- oil.nvim: Gestor de archivos para editar tu sistema de archivos como un buffer.

### Formato y Linting
- conform.nvim: Formateador de código fácil de usar.
- nvim-lint: Linter asíncrono.

### Markdown y Documentación
- markdown-preview.nvim: Vista previa de Markdown en tiempo real.
- markview.nvim: Renderizador de Markdown.
- obsidian.nvim: Integración con Obsidian.
- nvim-docs-view: Visor de documentación.

### Mejoras de Productividad
- alpha-nvim: Pantalla de inicio personalizable.
- bufferline.nvim: Pestañas/buffers con estilo.
- symbols-outline.nvim: Vista de símbolos del documento.
- trouble.nvim: Diagnóstico, referencias, resultados de búsqueda.
- which-key.nvim: Muestra atajos de teclado disponibles.

### Utilidades
- mini.hipatterns: Resaltado de patrones de texto.
- goto-preview: Vista previa de definiciones y referencias.
- nvim-spectre: Buscar y reemplazar en múltiples archivos.
- nvim-rip-substitute: Mejora el comando de sustitución.
- twilight.nvim: Atenúa las partes inactivas del código.
- zen-mode.nvim: Modo distracción-libre.
- vim-be-good: Juego para practicar movimientos de Vim.

