--LIMPIA TABLAS -- CLEAN TABLES
DELETE FROM PUBLIC.TICKETLINES; -- LINEAS FACTURAS
DELETE FROM PUBLIC.TAXLINES; --LINEAS DE IMPUESTOS
DELETE FROM PUBLIC.TICKETS; --HEADER FACTURAS 
DELETE FROM PUBLIC.PAYMENTS; --PAGOS
DELETE FROM PUBLIC.RECEIPTS; --RECIBOS
DELETE FROM PUBLIC.SHAREDTICKETS; --
DELETE FROM PUBLIC.STOCKDIARY;  --EXISTENCIAS
DELETE FROM PUBLIC.CLOSEDCASH;  --CIERRES DE CAJA
DELETE FROM PUBLIC.STOCKCURRENT;
DELETE FROM PUBLIC.RESERVATION_CUSTOMERS;
DELETE FROM PUBLIC.CUSTOMERS;  --TERCEROS
DELETE FROM PUBLIC.PRODUCTS_COM; 
DELETE FROM PUBLIC.PRODUCTS_CAT;  --CATEGORIAS DE PRODUCTO
DELETE FROM PUBLIC.PRODUCTS;  --PRODUCTOS
DELETE FROM PUBLIC.CATEGORIES; --CATEGORIAS
DELETE FROM PUBLIC.ADDITIONAL_PRICES_FOR_PRODUCTS;
DELETE FROM PUBLIC.UNITS; --UNIDADES
DELETE FROM PUBLIC.TAXES;  --IMPUESTOS
DELETE FROM PUBLIC.TAXCATEGORIES; --CATEGORIAS DE IMPUESTO
DELETE FROM PUBLIC.TAXCUSTCATEGORIES; --CATEGORIAS DE CLIENTES
DELETE FROM PUBLIC.CITY; --CIUDADES
DELETE FROM PUBLIC.REGION;  --REGIONES
DELETE FROM PUBLIC.COUNTRY;  --PAISES
DELETE FROM PUBLIC.ADDITIONAL_PRICES_FOR_PRODUCTS;   
DELETE FROM PUBLIC.PEOPLE WHERE ID NOT IN ('0','1','2');  --USUARIOS 
DELETE FROM PUBLIC.PLACES WHERE FLOOR NOT IN ('0');  --MESAS
DELETE FROM PUBLIC.FLOORS WHERE ID NOT IN ('0');  --PISOS
DELETE FROM PUBLIC.LOCATIONS WHERE ID NOT IN ('0'); --LOCLIZACIONES
DELETE FROM PUBLIC.RESERVATIONS; --RESEVACIONES
DELETE FROM PUBLIC.TICKET_AUDIT; --AUDITORIA
UPDATE PUBLIC.STOCKCURRENT SET UNITS = 0;
UPDATE PUBLIC.CUSTOMERS SET CURDATE = NULL;
UPDATE PUBLIC.CUSTOMERS SET CURDEBT = 0;
--REINICIA SECUENCIAS -- RESTART SECUENCES
ALTER SEQUENCE PUBLIC.TICKETSNUM RESTART WITH 1;
ALTER SEQUENCE PUBLIC.TICKETSNUM_REFUND RESTART WITH 1;
ALTER SEQUENCE PUBLIC.TICKETSNUM_PAYMENT RESTART WITH 1;
ALTER SEQUENCE PUBLIC.TICKET_AUDIT_MYID_SEQ RESTART WITH 1;