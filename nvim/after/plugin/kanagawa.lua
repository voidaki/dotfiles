-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = { bold = false},
    keywordStyle = {italic = false, bold = false},
    stringStyle = { bold = false },
    variableStyle = { bold = false },
    statementStyle = { bold = false },
    typeStyle = { bold = false },
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        ui = {
            fg = "#c8caca"
        },
        syn = {
            variable = "#e0915c",
            type = "#aa64c7"
        },
        palette = {
            sumiInk0 = "#16161D",
            sumiInk1 = "#181820",
            sumiInk2 = "#1a1a22",
            sumiInk3 = "#1F1F28",
            sumiInk4 = "#2A2A37",
            sumiInk5 = "#363646",
            sumiInk6 = "#54546D", --fg

            -- Popup and Floats
            waveBlue1 = "#223249",
            waveBlue2 = "#2D4F67",

            -- Diff and Git
            winterGreen = "#2B3328",
            winterYellow = "#49443C",
            winterRed = "#43242B",
            winterBlue = "#252535",
            autumnGreen = "#76946A",
            autumnRed = "#C34043",
            autumnYellow = "#c8caca",

            -- Diag
            samuraiRed = "#E82424",
            roninYellow = "#FF9E3B",
            waveAqua1 = "#6A9589",
            dragonBlue = "#658594",

            -- Fg and Comments
            oldWhite = "#C8C093",
            fujiWhite = "#c8caca",
            fujiGray = "#727169",

            oniViolet = "#e05970",
            oniViolet2 = "#e0915c",
            crystalBlue = "#aa64c7",
            springViolet1 = "#938AA9",
            springViolet2 = "#9CABCA",
            springBlue = "#aa64c7",
            lightBlue = "#A3D4D5", -- unused yet
            waveAqua2 = "#aa64c7", -- improve lightness: desaturated greenish Aqua

            -- waveAqua2  = "#68AD99",
            -- waveAqua4  = "#7AA880",
            -- waveAqua5  = "#6CAF95",
            -- waveAqua3  = "#68AD99",

            springGreen = "#8ca3d0",
            boatYellow1 = "#938056",
            boatYellow2 = "#d7506a",
            carpYellow = "#c8caca",

            sakuraPink = "#D27E99",
            waveRed = "#E46876",
            peachRed = "#FF5D62",
            surimiOrange = "#8ca3d0",
            katanaGray = "#717C7C",

            dragonBlack0 = "#0d0c0c",
            dragonBlack1 = "#12120f",
            dragonBlack2 = "#1D1C19",
            dragonBlack3 = "#181616",
            dragonBlack4 = "#282727",
            dragonBlack5 = "#393836",
            dragonBlack6 = "#625e5a",

            dragonWhite = "#c5c9c5",
            dragonGreen = "#87a987",
            dragonGreen2 = "#8a9a7b",
            dragonPink = "#a292a3",
            dragonOrange = "#b6927b",
            dragonOrange2 = "#b98d7b",
            dragonGray = "#a6a69c",
            dragonGray2 = "#9e9b93",
            dragonGray3 = "#7a8382",
            dragonBlue2 = "#8ba4b0",
            dragonViolet= "#8992a7",
            dragonRed = "#c4746e",
            dragonAqua = "#8ea4a2",
            dragonAsh = "#737c73",
            dragonTeal = "#949fb5",
            dragonYellow = "#c4b28a",--"#a99c8b",
            -- "#8a9aa3",

            lotusInk1 = "#545464",
            lotusInk2 = "#43436c",
            lotusGray = "#dcd7ba",
            lotusGray2 = "#716e61",
            lotusGray3 = "#8a8980",
            lotusWhite0 = "#d5cea3",
            lotusWhite1 = "#dcd5ac",
            lotusWhite2 = "#e5ddb0",
            lotusWhite3 = "#f2ecbc",
            lotusWhite4 = "#e7dba0",
            lotusWhite5 = "#e4d794",
            lotusViolet1 = "#a09cac",
            lotusViolet2 = "#766b90",
            lotusViolet3 = "#c9cbd1",
            lotusViolet4 = "#624c83",
            lotusBlue1 = "#c7d7e0",
            lotusBlue2 = "#b5cbd2",
            lotusBlue3 = "#9fb5c9",
            lotusBlue4 = "#4d699b",
            lotusBlue5 = "#5d57a3",
            lotusGreen = "#6f894e",
            lotusGreen2 = "#6e915f",
            lotusGreen3 = "#b7d0ae",
            lotusPink = "#b35b79",
            lotusOrange = "#cc6d00",
            lotusOrange2 = "#e98a00",
            lotusYellow = "#77713f",
            lotusYellow2 = "#836f4a",
            lotusYellow3 = "#de9800",
            lotusYellow4 = "#f9d791",
            lotusRed = "#c84053",
            lotusRed2 = "#d7474b",
            lotusRed3 = "#e82424",
            lotusRed4 = "#d9a594",
            lotusAqua = "#597b75",
            lotusAqua2 = "#5e857a",
            lotusTeal1 = "#4e8ca2",
            lotusTeal2 = "#6693bf",
            lotusTeal3 = "#5a7785",
            lotusCyan = "#d7e3d8",
        },
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    theme = "wave",              -- Load "wave" theme
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})
