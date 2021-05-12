nome_cadastro = 0
cpf_cadastro = 0
senha_cadastro = 0

loop do

# Seleção de opções
  puts "Selecione uma das seguintes opções:

  1 - Cadastro de Clientes
  2 - Saldo
  3 - Saque
  4 - Depósito
  5 - Tranferência
  6 - Sair"
  print 'Opção: '

  opcoes = gets.chomp.to_i

case opcoes

  # Quando selecionado opção 1 - Cadastro

  when 1

    cliente = {}
    puts 'Digite seu nome:'
    nome_cadastro = gets.chomp
    cliente[:nome] = "nome_cadastro"

    #Falta colocar limite de caractere

    puts 'Digite seu CPF:'
    cpf_cadastro = gets.chomp.to_i
    cliente[:cpf] = "cpf_cadastro"

    puts 'Digite uma senha:'
    senha_cadastro = gets.chomp.to_i
    cliente[:senha] = "senha_cadastro"

    puts "Cadastro efetuado com sucesso - Nome: #{nome_cadastro} - CPF: #{cpf_cadastro} - Senha: #{senha_cadastro}"

    "/n"

    # Quando selecionado opção 2 - Consultar Saldo

  when 2

    # Esta com valores fixos



    puts 'Digite seu CPF'
    cpf_saldo = gets.chomp.to_i
    
    puts 'Digite sua senha'
    senha_saldo = gets.chomp.to_i
    
    if (cpf_saldo == cpf_cadastro) && (senha_saldo == senha_cadastro)
    
    puts 'Seu saldo é de R$0,00.'

    else puts 'CPF ou Senha incorreto'
    
    end

   '/n'

  when 3

    puts 'Digite seu CPF'
    cpf_saque = gets.chomp.to_i
    
    puts 'Digite sua senha'
    senha_saque = gets.chomp.to_i
    
    if (cpf_saque == cpf_cadastro) && (senha_saque == senha_cadastro)
    
    # Falta colocar duas casas decimais

    puts 'Quanto deseja sacar?'
    valor_saque = gets.chomp.to_f
    printf "Saque no valor de R$#{valor_saque} realizado com sucesso!"

    else puts 'CPF ou Senha incorreto.'
    
    end

    "/n"

    #Quando selecionado opção 4 - Depósito

  when 4

    puts 'Digite seu CPF'
    cpf_deposito = gets.chomp.to_i
    
    puts 'Digite sua senha'
    senha_deposito = gets.chomp.to_i
    
    if (cpf_deposito == cpf_cadastro) && (senha_deposito == senha_cadastro)
    
    # Falta colocar duas casas decimais

    puts 'Digite agência para depósito'
    agencia_deposito = gets.chomp.to_i

    puts 'Digite conta para depósito'
    conta_deposito = gets.chomp.to_i

    puts 'Quanto deseja depositar?'
    valor_deposito = gets.chomp.to_f

    puts "Deposito no valor de R$#{valor_deposito} realizado para agência #{agencia_deposito} e conta #{conta_deposito} com sucesso!"

    else puts 'CPF ou Senha incorreto.'
    
    end

    "/n"

    # Quando selecionado opção 5 - Transferência

 when 5

    puts 'Digite seu CPF'
    cpf_transf = gets.chomp.to_i
    
    puts 'Digite sua senha'
    senha_transf = gets.chomp.to_i
    
    if (cpf_transf == cpf_cadastro) && (senha_transf == senha_cadastro)
    
    # Falta colocar duas casas decimais

    puts 'Digite agência para transferência'
    agencia_transf = gets.chomp.to_i

    puts 'Digite conta para tranferência'
    conta_transf = gets.chomp.to_i

    puts 'Quanto deseja transferir?'
    valor_transf = gets.chomp.to_f

    puts "Transferência no valor de R$#{valor_transf} realizado para agência #{agencia_transf} e conta #{conta_transf} com sucesso!"

    else puts 'CPF ou Senha incorreto.'
    
    end

    "/n"

  # Quando selecionado opção 6 - Finaliza a aplicação

  when 6
    break
  else 
    puts 'Opção incorreta'
  end
end
system "clear"