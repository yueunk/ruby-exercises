# format change from yyyy-mm-dd to dd.mm.yyyy

def format_date(date)
  date.sub(/^(\d{4})-(\d{2})-(\d{2})$/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)