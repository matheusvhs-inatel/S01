use std::io;

fn main() {
    loop {
        // Solicita o primeiro número ao usuário
        println!("Digite o primeiro número:");

        let mut input1 = String::new();
        io::stdin().read_line(&mut input1).expect("Falha ao ler a entrada");
        let num1: f64 = match input1.trim().parse() {
            Ok(val) => val,
            Err(_) => {
                println!("Por favor, insira um número válido.");
                continue;
            }
        };

        // Solicita o segundo número ao usuário
        println!("Digite o segundo número:");

        let mut input2 = String::new();
        io::stdin().read_line(&mut input2).expect("Falha ao ler a entrada");
        let num2: f64 = match input2.trim().parse() {
            Ok(val) => val,
            Err(_) => {
                println!("Por favor, insira um número válido.");
                continue;
            }
        };

        // Solicita a operação desejada
        println!("Escolha uma operação: 1 para soma, 2 para multiplicação");

        let mut choice = String::new();
        io::stdin().read_line(&mut choice).expect("Falha ao ler a entrada");
        let choice: u32 = match choice.trim().parse() {
            Ok(val) => val,
            Err(_) => {
                println!("Por favor, escolha uma opção válida.");
                continue;
            }
        };

        match choice {
            1 => println!("A soma é: {}", num1 + num2),
            2 => println!("A multiplicação é: {}", num1 * num2),
            _ => println!("Escolha inválida, tente novamente."),
        }

        // Pergunta se o usuário deseja realizar outra operação
        println!("Deseja realizar outra operação? (s/n)");

        let mut again = String::new();
        io::stdin().read_line(&mut again).expect("Falha ao ler a entrada");

        if again.trim().to_lowercase() != "s" {
            break;
        }
    }
}
