// Classe Animal
class Animal {
    constructor(nome, idade, especie) {
        this.nome = nome;
        this.idade = idade;
        this.especie = especie;
    }

    printlnfo() {
        console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`);
    }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
    #raca; // Atributo privado

    constructor(nome, idade, especie, raca) {
        super(nome, idade, especie);
        this.#raca = raca;
    }

    printlnfo() {
        console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}, Raça: ${this.#raca}`);
    }
}

// Classe Gato que herda de Animal
class Gato extends Animal {
    constructor(nome, idade, especie, cores) {
        super(nome, idade, especie);
        this.cores = cores; // Array de cores
    }

    printlnfo() {
        console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}, Cores: ${this.cores.join(", ")}`);
    }
}

// Criando objetos
const animal = new Animal("Leão", 5, "Felino");
const cachorro = new Cachorro("Rex", 3, "Canino", "Labrador");
const gato = new Gato("Mimi", 2, "Felino", ["Preto", "Branco", "Cinza"]);

// Printando as informações
animal.printlnfo();
cachorro.printlnfo();
gato.printlnfo();
