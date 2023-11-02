\begin{lstlisting}[style=RustStyle]
...
// Imported form host
extern "C" {
    fn log(s: &str);
    fn get_input() -> usize; }

fn fibo(n: usize) -> i32 {
    // Iterative fibonacci
    // Create a vector of size n+1
    let mut fibo_result = vec![0; n + 1];
    // Set ith 0 and 1
    fibo_result[0] = 1;
    fibo_result[1] = 1;
    for i in 2..=n {
        // f[i] = f[i-1] + f[i-2]
        fibo_result[i] = fibo_result[i - 1] + fibo_result[i - 2];
    }
    // Return the last element
    return fibo_result[n];
}
// Pub to export the function
pub fn main() {
    // Get the input from the user
    let ith = get_input();
    // Calculate the fibonacci
    let fib = fibo(get_input());
    // Print the result in the host imported function
    log(&format!("{}",fib));
}
\end{lstlisting}