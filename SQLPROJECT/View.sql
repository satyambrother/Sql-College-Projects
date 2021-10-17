
                             -------------------------------------------------------------
				                                  VIEWS IN SQL LANGUAGE               VIDEO 42,45
				             -------------------------------------------------------------

=> VIEWS IS A VIRTUAL /LOGICAL TABLE FOR BASE TABLE
=> WILL NOT STORE DATA BUT SELECT QUERY STATEMENT IS ONLY STORE
=> IT WILLL CREATE WITH HELP OF "SELECT STATEMENT"

                               ---------------------------------------------------------
							                         TYPES OF VIEW
                               ---------------------------------------------------------

1-> SIMPLE VIEW => WHEN WE ACCESS THE REQUIRED DATA FROM A SINGLE BASE TABLE
                => IT CAN SUPPORT ALL DML OPERATION
				=> SIMPLE VIEW IS ALSO CALLED AS A UPDATEABLE VIEW
2-> COMPLEX VIEW =>WHEN WE ACCESS REQUIRED DATA FROM MULTIPLE BASE TABLE
                 => IT NOT SUPPORT ALL DML OPERATION ON MULTIPLE BASE TABLE AT A TIME
				 => IT IS ALSO CALLED NON UPDATEABLE VIEW

				          --------------------------------
						       SIMPLE VIEW
                           -------------------------------

				 SYNTAX:

				 CREATE VIEW <VIEW NAME> AS SELECT*FROM <TABLE NAME>[WHERE(CONDITION)];

EXEMPLE:
       SELECT*FROM EMP

	   CREATE VIEW V1 AS SELECT*FROM EMP

	   SELECT*FROM V1

	   INSERT V1 VALUES(101,'CHUTIYA',25000,'GZP')

	   UPDATE V1 SET SALARY=30000 WHERE EID=1

	   DELETE FROM V1 WHERE EID=4
	                            
								-------------------------------------
								             COMPLEX VIEW
								-------------------------------------

==> IT SUPPORT SELECT COMMAND ONLY BUT WE CAN NOT PERFORM DML OPERATION

SYNTAX==>
          CREATE VIEW <VIEW NAME> AS SELECT*FROM<TABLE NAME>

EXAMPLE:
        
		CREATE VIEW CV1 AS 
		SELECT*FROM EMP_GHAZIABAD
		UNION
		SELECT*FROM EMP_GHAZIPUR

		SELECT*FROM CV1

TESTING: 
        	SELECT*FROM CV1

			INSERT INTO CV1 VALUES(111,'AA',200000)  --NOT ALLOWED

			UPDATE  CV1 NAME='RAJPUT' WHERE EID=101  --NOT ALLOWED

			DELETE FROM CV1 WHERE EID=101           -- NOT ALLOWED

			==> IT READ DATA FROM MULTIPLE TABLE BUT NOPT WRITE 