#include <iostream>
#include <string>

using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;
    
public:

    Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

    void imprimirNome() const {
        cout << "O nome da pessoa é: " << nome << endl;
    }

    virtual void imprimirIdade() const {
        cout << "A idade da pessoa é: " << idade << " anos" << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;

public:

    Aluno(string nome, int idade, string matricula) : Pessoa(nome, idade), matricula(matricula) {}

    void imprimirIdade() const override {
        cout << "A idade do aluno é: " << idade << " anos" << endl;
    }

    void imprimirMatricula() const {
        cout << "A matrícula do aluno é: " << matricula << endl;
    }
};

class Professor : public Pessoa {
public:

    Professor(string nome, int idade) : Pessoa(nome, idade) {}

    void imprimirIdade() const override {
        cout << "A idade do professor é: " << idade << " anos" << endl;
    }
};

int main() {

    Pessoa pessoa("João", 45);
    Aluno aluno("Matheus", 24, "525");
    Professor professor("Ana", 51);

    pessoa.imprimirNome();
    pessoa.imprimirIdade();

    aluno.imprimirNome();
    aluno.imprimirIdade();
    aluno.imprimirMatricula();

    professor.imprimirNome();
    professor.imprimirIdade();

    return 0;
}
