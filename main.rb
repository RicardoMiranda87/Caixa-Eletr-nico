require '/home/ricardo/Documentos/Desafios/Caixa Eletrônico/cliente.rb'
require '/home/ricardo/Documentos/Desafios/Caixa Eletrônico/banco.rb'

puts "Bem vindo(a) \n\n"

banco = Banco.new
opcoes = [1, 2, 3, 4, 5, 6, 7]

entradas = ['1 - Cadastro', '2 - Saldo', '3 - Saque', '4 - Depósito', '5 - Transferência', '6 - Listar contas cadastradas', '7 - Sair']

loop do

  puts "\n"

  puts entradas.map{|e| "Digite #{e} \n" }
  puts "\n"
  opcao = gets.chomp.to_i

  case opcao

    when 1 
            
      cliente = Cliente.new

      puts 'Digite seu nome:'
      cliente.set_nome( gets.chomp )

      puts "\n"

      puts 'Digite seu CPF:'
      cliente.set_cpf( gets.chomp.to_i )

      puts "\n"

      puts 'Digite sua senha:'
      cliente.set_senha( gets.chomp.to_i )

      puts"\n"

      puts "Conta criada com sucesso, bem vindo(a)! #{cliente.get_nome}\n\n"

      banco.adicionar(cliente)

    when 2

      puts 'Digite seu CPF:'

      cpf = gets.chomp.to_i

      puts "\n"

      puts 'Digite sua senha:'

      senha = gets.chomp.to_i

      puts "\n"

      banco.consulta_saldo(cpf,senha)
            
    when 3

      puts 'Digite seu CPF:'

      cpf = gets.chomp.to_i

      puts "\n"

      puts 'Digite sua senha:'

      senha = gets.chomp.to_i

      puts "\n"

      banco.sacar(cpf,senha)

    when 4

      puts 'Digite seu CPF:'

      cpf = gets.chomp.to_i

      puts "\n"

      puts 'Digite sua senha:'

      senha = gets.chomp.to_i

      puts "\n"

      banco.deposito(cpf,senha)

    when 5
          
      puts 'Digite seu CPF:'

      cpf = gets.chomp.to_i

      puts "\n"

      puts 'Digite sua senha:'

      senha = gets.chomp.to_i

      puts "\n"

      banco.transferencia(cpf,senha)

    when 6 

      banco.listar
        
    when 7
      break
    else
      puts"\n"
      puts "Opção incorreta, digite apenas: #{opcoes.join (' , ')}"
    end  
end    
    
system "clear"