USE M_Gufos;

SELECT *
FROM Categorias order by IdCategoria ASC;

SELECT*
FROM Eventos ORDER BY DataEvento DESC;

SELECT *
FROM Usuarios;

SELECT * 
FROM Presencas;

SELECT E.*, C.* 
FROM Eventos E
INNER JOIN Categorias AS C
ON E.IdCategoria = C.IdCategoria;

SELECT P.*, U.*, E.*
FROM Presencas AS P
INNER JOIN Usuarios AS U 
ON P.IdUsuario = U.IdUsuario
INNER JOIN Eventos AS E
ON P.IdEvento = E.IdEvento;

SELECT P.*, U.*, E.*, C.*
FROM Presencas AS P
JOIN Usuarios U
ON P.IdUsuario = U.IdUsuario
JOIN Eventos AS E
ON P.IdEvento = E.IdEvento
JOIN Categorias AS C
ON P.IdUsuario = C.IdCategoria; 
