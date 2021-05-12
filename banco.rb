class Banco

  def initialize
    @clientes = []

    puts "Digite a opção desejada: \n\n"
  end

  # Listar Contas cadastradas

  def listar

		if @clientes.size == 0
			puts "Nenhuma conta cadastrada. \n\n"
		else
			puts '-[Clientes Cadastrados]-------------------------------------------------'
			@clientes.each do |cliente|
			puts "Nome: #{cliente.get_nome} - CPF: #{cliente.get_cpf} - Senha: #{cliente.get_senha} - Saldo: R$#{cliente.get_saldo}" 
	  end
			puts '------------------------------------------------------------------------'
    end
  end

	#Cadastrar novas contas

  def adicionar(dados)

		existe = self.procurar_cpf( dados.get_cpf )

		if existe == nil 
			if dados.class == Cliente
				@clientes << dados
			end
    else
	    puts 'CPF já cadastrado.'
		end
  end

	#Busca CPF pra ver se já existe na base de dados

  def procurar_cpf(proc) 
		out = nil
		posicao = 0

		@clientes.each do |cliente|
		if cliente.get_cpf == proc
			out = [posicao, cliente]
			break
			end
			posicao += 1 
		end
		
		return out	
	end

	#Validação de CPF e SENHA

	def validar(cpf,senha)

		cliente = self.procurar_cpf(cpf)

		if cliente != nil
			if cliente[1].get_senha == senha
				return true
			else
				puts 'CPF ou SENHA inválido.'
			end
		else 	
			puts 'CPF ou SENHA inválido.'
		end

  end

	#Consultar saldo

	def consulta_saldo(cpf,senha)

		validacao = self.validar(cpf,senha)

		if validacao == true
			cliente = self.procurar_cpf(cpf)
			puts "Seu saldo é de R$#{cliente[1].get_saldo} \n\n"
		end

	end

	#Efetuar saque

	def sacar(cpf,senha)

		#Validação do cliente

		validacao = self.validar(cpf,senha)
		if	validacao == true
			cliente = self.procurar_cpf(cpf)

			#Lógica do saque
		
			puts 'Informe um valor válido para saque.'
			saque = gets.chomp.gsub(',','.').to_f

			if saque <= 0
				puts "Valor solicitado inválido.\n"

			elsif cliente[1].get_saldo >= saque
				cliente[1].set_saldo (cliente[1].get_saldo - saque)
				puts "Saque no valor #{saque} efetuado com sucesso, seu saldo atual é de R$#{cliente[1].get_saldo}\n\n"

			else

				puts "\n"
				puts "Saldo insuficiente.\n\n"

			end
		end
	end

	#Efetuar depósito

	def deposito(cpf,senha)

	#Validação do cliente

		validacao = self.validar(cpf,senha)
		if	validacao == true
			cliente = self.procurar_cpf(cpf)

	#Lógica do depósito
		
			puts 'Informe um valor válido para depósito.'
			deposito = gets.chomp.gsub(',','.').to_f

			if deposito <= 0

				puts "\n"
				puts "Valor solicitado inválido.\n\n"
			else
				if 
					cliente[1].set_saldo (cliente[1].get_saldo + deposito)
					puts "\n"
					puts "Depósito no valor de R$#{deposito} realizado com sucesso, seu saldo atual é R$#{cliente[1].get_saldo}\n\n"
				end
			end
		end
	end

	#Efetuar transferência

	def transferencia(cpf,senha)

	  #Validação do cliente

		validacao = self.validar(cpf,senha)

		if	validacao == true
			cliente = self.procurar_cpf(cpf)
	
	    #Lógica transferência

      puts 'Quanto deseja transferir?'
      transf = gets.chomp.gsub(',','.').to_f

			if transf <= 0

				puts "\n"
				puts "Valor solicitado inválido.\n\n"
			  
			else

        if  cliente[1].get_saldo >= transf
          puts "\n"
      	  puts 'Digite o CPF para o qual deseja transferir:'
      	  cpf_destino = gets.chomp.to_i
          
          cliente_destino = self.procurar_cpf(cpf_destino)

          if  cliente_destino != nil
      	    cliente[1].set_saldo (cliente[1].get_saldo - transf)
      	    cliente_destino[1].set_saldo (cliente_destino[1].get_saldo + transf)

            puts "\n"
            puts "Transferência no valor R$#{transf} efetuada com sucesso, seu saldo é de R$#{cliente[1].get_saldo}"

          else
            puts "\n"
            puts "CPF do destinatário inválido."
          end

        else
          puts "\n"
					puts "Saldo insuficiente.\n\n"
        end
			end
		end
	end
end