set json to (do shell script "curl https://coinbase.com/api/v1/prices/spot_rate")

tell application "JSON Helper"
	set result to read JSON from json
	set price to amount of result as number
end tell