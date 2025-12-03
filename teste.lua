local scriptContent = game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua")

-- 2. Imprime o conteúdo completo do script no console de saída
print("--- Conteúdo do Script Início ---")
print(scriptContent)
print("--- Conteúdo do Script Fim ---")

-- 3. Prepara o conteúdo (string) para ser executado (loadstring) e o executa ()
local scriptExecutor = loadstring(scriptContent)
local script = scriptExecutor()
