describe 'Teste de Cadastrar Tarefa' do

    def login(email: '', password: '')
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json
        
    end

    context 'tarefas' do
        it 'cadastrando uma tarefa com sucesso' do

        end
    end
end