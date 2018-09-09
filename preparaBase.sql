#SET SQL_SAFE_UPDATES = 0;

#select * from socioeconomica where idade <14 or idade >80;
#alter table socioeconomica drop column inscricao;

select * from socioeconomica;

select  
	GetClassePontos(total_pontos) as pontos,
	GetNomeCurso(curso) as curso,
	GetGrauCurso(curso) as grau,
	GetPeriodoCurso(curso) as periodo,
    sexo,
	GetFaixaIdade(idade) as idade,
    local_origem,
    tipo_instituicao,
    renda_familiar,
    tipo_residencia,
    grau_escolaridade,
    motivo,
    transporte,
    instrucao_pai,
    instrucao_mae,
    automovel,
    livros,
    leitura,
    internet
from 
	socioeconomica;

	
    










/*
delimiter $$ 
create function GetClassePontos(pontos float) returns varchar(20)
begin
	declare faixa varchar(20);
    if(pontos <20) then
		set faixa = 'menos de 20 pontos';
	elseif (pontos > 20 and pontos <=39) then
		set faixa = '20-40 pontos';
	elseif (pontos > 39 and pontos <=60) then
		set faixa = '40-60 pontos';
	elseif (pontos > 60 and pontos <=80) then
		set faixa = '60-80 pontos';
	elseif (pontos > 80) then
		set faixa = 'acima 80 pontos';
	end if;
        
    return faixa;
end $$
delimiter ;
*/