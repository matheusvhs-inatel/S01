fn preenche_arr(arr: &mut [i32], x: i32) {
    for i in 0..arr.len() {
        arr[i] = i as i32 * x;
    }
}

fn main() {
    let mut array = [0; 10];
    let valor = 5;

    preenche_arr(&mut array, valor);

    println!("Array preenchida: {:?}", array);
}
