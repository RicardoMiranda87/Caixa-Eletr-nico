=begin 
Esta com valores fixos
Falta colocar limite de caractere
Falta esconder a senha *
Saldo ficando negativo
casa decimal
=end


nome_cadastro = 0
cpf_cadastro = 0
senha_cadastro = 0

saldo = 0

saque = 0

deposito = 0

transf = 0

loop do

# Seleção de opções
  puts "Selecione uma das seguintes opções:

  1 - Cadastro de Clientes
  2 - Saldo
  3 - Saque
  4 - Depósito
  5 - Tranferência
  6 - Sair"

  puts "\n"

  print 'Opção: '

  opcoes = gets.chomp.to_i

case opcoes

  # Quando selecionado opção 1 - Cadastro

  when 1

    puts "\n"

    cliente = {}
    puts 'Digite seu nome:'
    nome_cadastro = gets.chomp
    cliente[:nome] = "nome_cadastro"

    puts "\n"

    puts 'Digite seu CPF:'
    cpf_cadastro = gets.chomp.to_i
    cliente[:cpf] = "cpf_cadastro"

    puts "\n"

    puts 'Digite uma senha:'
    senha_cadastro = gets.chomp.to_i
    cliente[:senha] = "senha_cadastro"

    puts "\n"

    puts "Cadastro efetuado com sucesso - Nome: #{nome_cadastro} - CPF: #{cpf_cadastro} - Senha: #{senha_cadastro}."

    puts "\n"

    # Quando selecionado opção 2 - Consultar Saldo

  when 2

    puts "\n"

    puts 'Digite seu CPF.'
    cpf_saldo = gets.chomp.to_i

    puts "\n"
    
    puts 'Digite sua senha.'
    senha_saldo = gets.chomp.to_i

    puts "\n"
    
    if (cpf_saldo == cpf_cadastro) && (senha_saldo == senha_cadastro)
    
    puts "Seu saldo é de R$#{saldo}."

    puts "\n"

    else puts 'CPF ou Senha incorreto.'
    
    end

    puts "\n"

    # Quando selecionado opção 3 - Realizar Saque

  when 3

    puts "\n"

    puts 'Digite seu CPF.'
    cpf_saque = gets.chomp.to_i

    puts "\n"
    
    puts 'Digite sua senha.'
    senha_saque = gets.chomp.to_i

    puts "\n"
    
    if (cpf_saque == cpf_cadastro) && (senha_saque == senha_cadastro)
      
      puts 'Quanto deseja sacar?'
      valor_saque = gets.chomp.to_f
      saldo =  saldo - valor_saque

    puts "\n"
    
    puts "Saque no valor de R$#{valor_saque} realizado com sucesso!

    Seu saldo é de R$#{saldo}."
    
    else puts 'CPF ou Senha incorreto.'
    
    end

    puts "\n"

    #Quando selecionado opção 4 - Realizar Depósito

  when 4

    puts "\n"

    puts 'Digite seu CPF.'
    cpf_deposito = gets.chomp.to_i

    puts "\n"
    
    puts 'Digite sua senha.'
    senha_deposito = gets.chomp.to_i

    puts "\n"
    
    if (cpf_deposito == cpf_cadastro) && (senha_deposito == senha_cadastro)

      puts 'Digite o CPF para qual deseja depositar.'
      cpf_deposito = gets.chomp.to_i

      puts "\n"
      
      puts 'Quanto deseja depositar?'
      valor_deposito = gets.chomp.to_f
      saldo =  saldo + valor_deposito

      puts "\n"

      puts "Depósito no valor de R$#{valor_deposito} para o CPF #{cpf_deposito} foi realizado com sucesso!

      Seu saldo é de R$#{saldo}."

      puts "\n"

    else puts 'CPF ou Senha incorreto.'
    
    end

    puts "\n"

    # Quando selecionado opção 5 - Realizar Transferência

  when 5

    puts "\n"

    puts 'Digite seu CPF.'
    cpf_transf = gets.chomp.to_i

    puts "\n"
    
    puts 'Digite sua senha.'
    senha_transf = gets.chomp.to_i

    puts "\n"
    
    if (cpf_transf == cpf_cadastro) && (senha_transf == senha_cadastro)

      puts 'Digite o CPF para qual deseja transferir.'
      cpf_transf = gets.chomp.to_i

      puts "\n"
      
      puts 'Quanto deseja transferir?'
      valor_transf = gets.chomp.to_f
      saldo =  saldo - valor_transf

      puts "\n"

    puts "Transferência no valor de R$#{valor_transf} para o CPF #{cpf_transf} foi realizado com sucesso!

    Seu saldo é de R$#{saldo}."

    puts "\n"

    else puts 'CPF ou Senha incorreto.'
    
    end

    puts "\n"

  # Quando selecionado opção 6 - Finalizar a aplicação

  when 6
    break
  else 
    puts 'Opção incorreta'
  end
end
system "clear"