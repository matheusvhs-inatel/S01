-- Matheus Vieira Honorio de Souza - GES - 525

print("Digite um número para ver a sua tabuada:")
local numero = io.read("*n")

print("Tabuada de " .. numero .. ":")
for i = 1, 10 do
        print(numero .. " x " .. i .. " = " .. numero * i)
end