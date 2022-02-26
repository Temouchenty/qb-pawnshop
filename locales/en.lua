local Translations = {
    error = {
        negative = 'Trying to sell a negative amount?',
        no_melt = 'You didn\'t give me anything to melt...',
        no_items = 'Not enough items',
    },
    success = {
        sold = 'Sold %{value} x %{value2} for $%{value3}',
        items_received = 'You received %{value} x %{value2}',
    },
    info = {
        title = 'Sydney Pawnshop',
        subject = 'Melting Items',
        message = 'We finished melting your items. You can come pick them up at any time.',
        open_pawn = 'Open Menu',
        sell = 'Trade Items',
        sell_pawn = 'Market the items in stock',
        max = 'Amount',
        pawn_closed = 'Trading unavailable at this time (2:00pm-5:00pm ONLY!)',
        sell_items = 'Selling Price $%{value}',
        back = '⬅ Go Back',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
