-- File called tail.sql
SELECT O.Operator_ID, S2.Target_ID, O.Operator_Type,
       S.Object_Name, CAST(O.Total_Cost AS INTEGER) Cost
FROM User_Name.EXPLAIN_OPERATOR O
     LEFT OUTER JOIN User_Name.EXPLAIN_STREAM S2
                     ON O.Operator_ID=S2.Source_ID
     LEFT OUTER JOIN User_Name.EXPLAIN_STREAM S
                     ON O.Operator_ID = S.Target_ID
                    AND O.Explain_Time = S.Explain_Time
                    AND S.Object_Name IS NOT NULL
ORDER BY O.Explain_Time ASC, Operator_ID ASC;
ROLLBACK;
