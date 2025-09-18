EXEC InserirClienteComLigacao 
    @nomeCliente = 'João da Silva',
    @cnpj = '12345678900',
    @logradouro = 'Rua de Teste',
    @nomeMunicipio = 'FLORIANOPOLIS';

EXEC InserirClienteComLigacao 'Maria Oliveira', '98765432100', 'Rua Nova', 'CURITIBA';
EXEC InserirClienteComLigacao 'Fernanda', '78745436100', 'Rua Corinthians', 'Rio Branco';