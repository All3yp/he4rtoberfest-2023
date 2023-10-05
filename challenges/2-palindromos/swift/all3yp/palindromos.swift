import Foundation

class Palindrome {
  /// Verifica se uma string é um palíndromo
  func checkPalindrome(_ s: String) -> String {
    let alphanumericString = s.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
    let isPalindrome = alphanumericString == String(alphanumericString.reversed())
    return isPalindrome ? "\(s) é um palíndromo." : "\(s) não é um palíndromo."
  }
  
  /// Lê input interativamente e verifica os palíndromos
  func checkPalindromeWithReadline() {
    func checkPalindromeWithReadline() {
      print("Digite uma string (ou 'exit' para sair):\n")
      while let input = readLine() {
        if input.lowercased() == "exit" {
          break
        }
        
        let result = checkPalindrome(input)
        print(result)
        print("Digite outra string (ou 'exit' para sair):\n")
      }
    }
  }
}
// MARK: - Case tests
let palindrome = Palindrome()
palindrome.checkPalindromeWithReadline()