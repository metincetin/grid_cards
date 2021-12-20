-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}

function M.load_cards()
	M.cards = json.decode(sys.load_resource("/data/cards.json"))
end
function M.get_card_by_name(value)
	for i, card in ipairs(M.cards) do
		if card.name == value then
			return card
		end
	end
end
function M.get_random_card()
	local i = math.random(2, table.getn(M.cards))
	return M.cards[i]
end
return M