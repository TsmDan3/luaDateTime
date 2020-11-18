--Main variables
rawYear = math.floor(os.time()/31557600)
year = rawYear + 1970
month = 0
rawDay = os.time() - (rawYear * 31557600)
day = 0
rawHour = 0
hour = 0
minute = 0
isAM = false
isLeapYear = false

--temp values, are only used during if blocks to store data about other values
temp_year1 = year/100
temp_year2 = year/4
temp_year3 = year/400
tempDay = math.floor(rawDay / 86400) + 1
jan = 31
feb = 28
leap = 29
mar = 31
apr = 30
may = 31
jun = 30
jul = 31
aug = 31
sep = 30
oct = 31
nov = 30
tempHour = 0
tempAM = 0
--if statements (obviously)

--Conditions for a leap year:
--Year is divisible by 4 AND year is NOT divisible by 100 OR year is divisible by 100 AND year is divisible by 400
--If both conditions are met, the isLeapYear flag is set to true
if temp_year1 - math.floor(temp_year1) > 0 and temp_year2 - temp_year2 == 0 then
    isLeapYear = true
end

if temp_year1 - math.floor(temp_year1) == 0 and temp_year3 - math.floor(temp_year3) == 0 then
    isLeapYear = true
end

--looks to see if the isLeapYear flag is set to true, then it calculates the month
if tempDay >= 1 and tempDay <= 31 then
    month = 1
end
if tempDay >= 32 and tempDay <= 59 and isLeapYear == false or tempDay >= 32 and tempDay <= 60 and isLeapYear == true then
    month = 2
end
if tempDay >= 60 and tempDay <= 90 and isLeapYear == false or tempDay >= 61 and tempDay <= 91 and isLeapYear == true then
    month = 3
end
if tempDay >= 91 and tempDay <= 120 and isLeapYear == false or tempDay >= 92 and tempDay <= 121 and isLeapYear == true then
    month = 4
end
if tempDay >= 121 and tempDay <= 151 and isLeapYear == false or tempDay >= 122 and tempDay <= 152 and isLeapYear == true then
    month = 5
end
if tempDay >= 151 and tempDay <= 181 and isLeapYear == false or tempDay >= 152 and tempDay <= 182 and isLeapYear == true then
    month = 6
end
if tempDay >= 181 and tempDay <= 212 and isLeapYear == false or tempDay >= 182 and tempDay <= 213 and isLeapYear == true then
    month = 7
end
if tempDay >= 213 and tempDay <= 243 and isLeapYear == false or tempDay >= 214 and tempDay <= 244 and isLeapYear == true then
    month = 8
end
if tempDay >= 244 and tempDay <= 273 and isLeapYear == false or tempDay >= 245 and tempDay <= 274 and isLeapYear == true then
    month = 9
end
if tempDay >= 274 and tempDay <= 304 and isLeapYear == false or tempDay >= 275 and tempDay <= 305 and isLeapYear == true then
    month = 10
end
if tempDay >= 305 and tempDay <= 334 and isLeapYear == false or tempDay >= 306 and tempDay <= 335 and isLeapYear == true then
    month = 11
end
if tempDay >= 335 and tempDay <= 365 and isLeapYear == false or tempDay >= 336 and tempDay <= 366 and isLeapYear == true then
    month = 12
end

--find day if the month is not January, else day is equal to tempDay
if month == 1 then
    day = tempDay
end
if month == 2 then
    day = tempDay - jan
end
if month == 3 then
    if isLeapYear == true then
        day = tempDay - jan - leap
    elseif isLeapYear == false then
        day = tempDay - jan - feb
    end
end
if month == 4 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar
    end
end
if month == 5 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr
    end
end
if month == 6 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may
    end
end
if month == 7 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun
    end
end
if month == 8 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun - jul
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun - jul
    end
end
if month == 9 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun - jul - aug
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun - jul - aug
    end
end
if month == 10 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun - jul - aug - sep
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun - jul - aug - sep
    end
end
if month == 11 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun - jul - aug - sep - oct
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun - jul - aug - sep - oct
    end
end
if month == 12 then
    if isLeapYear == true then
        day = tempDay - jan - leap - mar - apr - may - jun - jul - aug - sep - oct - nov
    elseif isLeapYear == false then
        day = tempDay - jan - feb - mar - apr - may - jun - jul - aug - sep - oct - nov
    end
end

--find time
tempHour = tonumber(os.date("%H",os.time()))
minute = tonumber(os.date("%M",os.time()))
if tempHour > 12 then
  hour = tempHour - 12
  tempAM = 0
else
  hour = tempHour
  tempAM = 1
end

--find AM value
if tempAM == 0 then
  isAM = false
else
  isAM = true
end

--delete all temp variables
temp_year1 = nil
temp_year2 = nil
temp_year3 = nil
tempDay = nil
jan = nil
feb = nil
leap = nil
mar = nil
apr = nil
may = nil
jun = nil
jul = nil
aug = nil
sep = nil
oct = nil
nov = nil
tempHour = nil
tempAM = nil

--output
print(os.time())
print(os.date())
print("Year is " .. year)
print("Month is " .. month)
print("Day is " .. day)
print("Hour is " .. hour)
print("Minute is " .. minute)
print("Is AM is " .. tostring(isAM))
