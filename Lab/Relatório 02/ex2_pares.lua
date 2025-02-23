-- Matheus Vieira Honorio de Souza - GES - 525

local tabela = {}

math.randomseed(os.time())


for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end

--[[print("Números gerados:")
for i = 1, 100 do
    io.write(tabela[i] .. " ")
end
--]]

local contador = 0
for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contador = contador + 1
    end
end

print("Quantidade de números pares: " .. contador)