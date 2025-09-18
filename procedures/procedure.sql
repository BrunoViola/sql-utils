CREATE PROCEDURE InserirClienteComLigacao
   @nomeCliente VARCHAR(150),
   @cnpj CHAR(14),
   @logradouro VARCHAR(200),
   @nomeMunicipio VARCHAR(100)
AS
BEGIN
   SET NOCOUNT ON;

   DECLARE @idMunicipio INT;
   DECLARE @idCliente INT;

   -- Buscar o idMunicipio na tabela Cidades
   SELECT @idMunicipio = idMunicipio
   FROM Cidades
   WHERE nomeMunicipio = @nomeMunicipio;

   -- Se não encontrar, opcional: inserir na tabela Cidades
   IF @idMunicipio IS NULL
   BEGIN
      INSERT INTO Cidades(nomeMunicipio)
      VALUES (@nomeMunicipio);

      SET @idMunicipio = SCOPE_IDENTITY(); -- pega o id gerado
   END

    -- Inserir na tabela Clientes
   INSERT INTO Clientes(nomeCliente, cnpj, logradouro, idMunicipio)
   VALUES (@nomeCliente, @cnpj, @logradouro, @idMunicipio);

   SET @idCliente = SCOPE_IDENTITY(); -- pega o id do cliente inserido

   -- Inserir na tabela Ligacao com idLigacao default 2
   INSERT INTO Ligacao(idLigacao, idCliente)
   VALUES (2, @idCliente);
END;