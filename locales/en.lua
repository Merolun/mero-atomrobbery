local Translations = {
    label = {
        ["targetlabel"] = "Braquer l'ATM",
        ["progressbar"] = "Connection Atm",
    },
    notify = {
        ["success"] = "Success",
        ["cancel"] = "Cancel",
        ["needıtem"] = "You Need Item",
        ["cooldown"] = "This ATM Has Been Stripped Before!",
        ["money"] = "from ATM ",
        ["luckyıtem"] = "You found 1 item from the ATM!",
        ["laptopexplosion"] = "Laptop Exploded!",
        ["needpolice"] = "Not Enough Police in the City",
        ["item"] = "Crowbar",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})