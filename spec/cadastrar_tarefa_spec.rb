describe 'Cadastrar Tarefa' do
    def login(field_email, field_password)
        @body = {
            session: {
                email: field_email,
                password: field_password
            }
        }.to_json
        @login = Login.post('/sessions', body: @body)
        puts @login.body
    end
  context 'Testes voltados para cadastrar tarefa' do
    before { login('teste-api@gmail.com', '123456') }

    it 'Cadastrar Tarefa com sucesso' do 

      @header = {
        'Content-Type': 'application/json',
        Accept: 'application/vnd.tasksmanagers.v2',
        Authorization: @login.parsed_response['data']['attributes']['auth-token']
      }

      @body = {
          task: {
            title: 'Criei Tarefa',
            description: 'Descrição da tarefa criei tarefa.',
            deadline: '2021-10-11 16:00:00',
            done: true
          }
        }.to_json

        @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
        puts @tarefas
        expect(@tarefas.parsed_response['data']['attributes']['title']).to eq 'Criei Tarefa'
    end
  end
end