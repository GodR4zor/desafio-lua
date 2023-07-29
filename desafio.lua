--[[
    
Nome do Monstro
Descrição
História
Atributos:
    Força
    Defesa
    Vitalidade
    Velocidade
Habilidades:
    Teleporte
    Coleta de Objetos       

================================================================================
/ 
/ Nome do Monstro : Enderman
/ Descrição: Uma criatura do The End que ataca aqueles que a olham diretamente.
/
/ Atributos:
/   Força: 
/   Defesa:
/   Vitalidade:
/   Velocidade:
/
/ Habilidades:
/   Teleporte:
/   Coleta de Objetos:
/
================================================================================
]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local monsters = {
    Creeper = {
        NOME_DO_MONSTRO = "Creeper";
        Descricao = "";
        Item = "Pólvora";
        Tipo_de_dano = "Curta distância";
        Local_de_nascimento = "Overworld";
        Atributos = {
            Poder = 10;
            Vida = 3;
            Velocidade = 3;
            Inteligencia = 2; 
        };
        Corpo_1 = "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩";
        Corpo_2 = "🟩⬛⬛⬛🟩🟩🟩⬛⬛⬛🟩";
        Corpo_3 = "🟩⬛⬛⬛🟩🟩🟩⬛⬛⬛🟩";
        Corpo_4 = "🟩🟩🟩🟩⬛⬛⬛🟩🟩🟩🟩";
        Corpo_5 = "🟩🟩⬛⬛⬛⬛⬛⬛⬛🟩🟩";
        Corpo_6 = "🟩🟩⬛⬛🟩🟩🟩⬛⬛🟩🟩"
    };

    Enderman = {
        NOME_DO_MONSTRO =  "Enderman";
        Descricao = "";
        Item = "Olho do ender";
        Tipo_de_dano = "Corpo a corpo";
        Local_de_nascimento = "Overworld / TheEnd";
        Atributos = {
            Poder = 7;
            Vida = 6;
            Velocidade = 8;
            Inteligencia = 5;
        };  
        Corpo_1 = "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛";
        Corpo_2 = "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛";
        Corpo_3 = "♋♋♋♋⬛⬛⬛♋♋♋♋";
        Corpo_4 = "♋♋♋♋⬛⬛⬛♋♋♋♋";
        Corpo_5 = "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛";
        Corpo_6 = "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛"
        
    };

    Esqueleto = {
        NOME_DO_MONSTRO =  "Esqueleto";
        Descricao = "";
        Item = "Osso / Arco / Flecha";
        Tipo_de_dano = "A Distância";
        Local_de_nascimento = "Overworld / Nether";
        Atributos = {
            Poder = 6;
            Vida = 4;
            Velocidade = 6;
            Inteligencia = 8;
        };
        Corpo_1 = "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜";
        Corpo_2 = "⬜⬛⬛⬛⬜⬜⬜⬛⬛⬛⬜";
        Corpo_3 = "⬜⬛⬛⬛⬜⬜⬜⬛⬛⬛⬜";
        Corpo_4 = "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜";
        Corpo_5 = "⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜";
        Corpo_6 = "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜"
    }

}


-- função que retorna o monstro
local function getMonsterName(monsterName)
    return monsters[monsterName]
end

print("Digite o nome do monstro:\n1) Creeper\n2) Enderman\n3) Esqueleto ")
local monster = io.read()

local attributes = getMonsterName(monster)

-- função que recebe um atributo e nos retorna uma barra de progresso / texto
local function attributeBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local Bar = ""
    for i = 1, 10, 1 do 
        if i <= attribute then
            --Barrinha Cheia
            Bar = Bar .. fullChar
        else
            --Barrinha Vazia
            Bar = Bar .. emptyChar
        end
    
    end
    return Bar
end


print("=========================================================================================================")
print("|")
print("| Foto de Perfil: ")
print("|")
print("| ".. attributes.Corpo_1)
print("| ".. attributes.Corpo_2)
print("| ".. attributes.Corpo_3)
print("| ".. attributes.Corpo_4)
print("| ".. attributes.Corpo_5)
print("| ".. attributes.Corpo_6)
print("|")
print("| Nome do Monstro: ".. attributes.NOME_DO_MONSTRO)
print("| Descricao: ".. attributes.Descricao)
print("|")
print("| Item: ".. attributes.Item)
print("| Tipo de Dano:".. attributes.Tipo_de_dano)
print("| Local de nascimento: ".. attributes.Local_de_nascimento)
print("|")
print("| Atributos:")
print("|    Poder:        ".. attributeBar(attributes.Atributos.Poder))
print("|    Vida:         ".. attributeBar(attributes.Atributos.Vida))
print("|    Velocidade:   ".. attributeBar(attributes.Atributos.Velocidade))
print("|    Inteligência: ".. attributeBar(attributes.Atributos.Inteligencia))
print("|")
print("=========================================================================================================")
