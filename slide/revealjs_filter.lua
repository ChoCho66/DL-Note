-- https://quarto.org/docs/extensions/lua.html
-- https://quarto.org/docs/extensions/lua-api.html
-- https://bookdown.org/yihui/rmarkdown-cookbook/lua-filters.html

function Header(el)
  -- The header level can be accessed via the attribute 'level'
  -- of the element. See the Pandoc documentation later.
  if (el.level <= 1) then
    error("I don't know how to raise the level of h1")
  end
  el.level = el.level - 1
  return el
end

