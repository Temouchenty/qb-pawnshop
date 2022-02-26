Config = {}

Config.PawnLocation = vector3(171.69, -1316.63, 29.36)
Config.SocietyMoney = true -- Set to true if you want the money to go into the society bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 14 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.ClockOutDist = 40 -- 40 Seems about fair (Go outside this area on duty and it will switch you to offduty)

Config.PawnItems = {
    [1] = {
        item = "goldchain",
        price = math.random(250, 300)
    },
    [2] = {
        item = "diamond_ring",
        price = math.random(1990, 2250)
    },
    [3] = {
        item = "rolex",
        price = math.random(2000, 4500)
    },
    [4] = {
        item = "10kgoldchain",
        price = math.random(500, 790)
    },
    [5] = {
        item = "tablet",
        price = math.random(150,200)
    },
    [6] = {
        item = "iphone",
        price = math.random(210, 230)
    },
    [7] = {
        item = "samsungphone",
        price = math.random(100, 220)
    },
    [8] = {
        item = "laptop",
        price = math.random(350, 550)
    },
    --addons (delete this if not in yoru shared)
    [9] = {
        item = "nikeshirt",
        price = math.random(18, 22)
    },
    [10] = {
        item = "adidasshirt",
        price = math.random(18, 22)
    },
    [11] = {
        item = "niketrackies",
        price = math.random(22, 24)
    },
    [12] = {
        item = "adidastrackies",
        price = math.random(22, 24)
    },
    [13] = {
        item = "adidasshoes",
        price = math.random(35, 38)
    },
    [14] = {
        item = "nikeshoes",
        price = math.random(30, 42)
    },
    [15] = {
        item = "yeezys",
        price = math.random(200, 330)
    },
    [16] = {
        item = "beatsbydre",
        price = math.random(170, 175)
    },
    [17] = {
        item = "appleipad",
        price = math.random(195, 220)
    },
    [18] = {
        item = "airpods",
        price = math.random(185, 190)
    },
    [19] = {
        item = "comicbooks",
        price = math.random(750, 1500)
    },
    [20] = {
        item = "gameboy",
        price = math.random(150, 160)
    },
    [21] = {
        item = "razormouse",
        price = math.random(135, 138)
    },
    [22] = {
        item = "logitechmouse",
        price = math.random(135, 138)
    },
    [23] = {
        item = "razorkeyboard",
        price = math.random(135, 138)
    },
    [24] = {
        item = "logitechkeyboard",
        price = math.random(145, 148)
    },
    [25] = {
        item = "logitechheadset",
        price = math.random(145, 148)
    },
    [26] = {
        item = "pcmonitor",
        price = math.random(170, 185)
    },
    [27] = {
        item = "googlehome",
        price = math.random(160, 185)
    },
    [28] = {
        item = "3090graphicscard",
        price = math.random(2200, 2800)
    },
    [29] = {
        item = "ps4",
        price = math.random(200, 210)
    },
    [30] = {
        item = "ps5",
        price = math.random(470, 590)
    },
    [31] = {
        item = "xbox1",
        price = math.random(220, 235)
    },
    [32] = {
        item = "xboxs",
        price = math.random(400, 450)
    },
    [33] = {
        item = "nintendoswitch",
        price = math.random(330, 350)
    },
    [34] = {
        item = "jimmychooshoes",
        price = math.random(330, 455)
    },
    [35] = {
        item = "battery",
        price = math.random(25, 30)
    }
}