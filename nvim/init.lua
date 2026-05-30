require("kylepasag")



timeTable = os.date("*t")
currentHour = timeTable.hour
message = ""

if currentHour > 6 and currentHour < 12 then
	message = "Morning"
elseif currentHour > 12 and currentHour < 18 then
	message = "Afternoon"
else
	message = "Evening"
end

print("Good " .. message .. "!")
