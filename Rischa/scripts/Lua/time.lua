words = {"O n e", "T w o", "T h r e e", "F o u r", "F i v e", "S i x", "S e v e n", "E i g h t", "N i n e"}
levels = {"THOUSAND ", "MILLION ", "BILLION ", "TRILLION ", "QUADRILLION ", "QUINTILLION ", "SEXTILLION ", "SEPTILLION ", "OCTILLION ", [0] = ""}
iwords = {"T e n", "T w e n t y ", "T h i r t y ", "F o r t y ", "F i f t y ", "S i x t y ", "Seventy ", "Eighty ", "Ninety "}
twords = {"E l e v e n", "T w e l v e", "T h i r t e e n", "F o u r t e e n", "F i f t e e n", "S i x t e e n", "S e v e n t e e n", "E i g h t e e n", "N i n e t e e n"}

function digits(n)
  local i, ret = -1
  return function()
    i, ret = i + 1, n % 10
    if n > 0 then
      n = math.floor(n / 10)
      return i, ret
    end
  end
end

level = false
function getname(pos, dig)
  level = level or pos % 3 == 0
  if(dig == 0) then return "" end
  local name = (pos % 3 == 1 and iwords[dig] or words[dig]) .. (pos % 3 == 2 and "HUNDRED " or "")
  if(level) then name, level = name .. levels[math.floor(pos / 3)], false end
  return name
end

function numberToWord(number)
    if(number == 0) then return "O'Clock" end
    vword = ""
    for i, v in digits(number) do
      vword = getname(i, v) .. vword
    end

    for i, v in ipairs(words) do
      vword = vword:gsub("TY " .. v, "TY-" .. v)
      vword = vword:gsub("T e n" .. v, twords[i])
    end
    return vword
end

function conky_Hour()
    return numberToWord(os.date("%I") + 0)
end

function conky_Minute()
    return numberToWord(os.date("%M") + 0)
end

function conky_Date()
    return numberToWord(os.date("%d") + 0)
end
