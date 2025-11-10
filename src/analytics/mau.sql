WITH tb_daily as (

SELECT DISTINCT 
    date(substr(DtCriacao,0, 11)) AS DtDia,
    IdCliente

FROM transacoes
ORDER BY DtDia

),

tb_distinct_day AS (

SELECT 
    DISTINCT DtDia AS DtRef
FROM tb_daily

)

SELECT t1.*, t2.*

FROM tb_distinct_day AS t1

LEFT JOIN tb_daily AS t2
ON t2.DtDia <= t1.dtRef


LIMIT 100