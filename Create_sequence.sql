/*
 Create a sequences to uniquely identify each row 
 in table CustomerType. Start with 101; do not allow
 caching of the values. Name the sequence 
 CustomerType_NUM_SEQ.
Save the statements in a script named Asg2_Q6.sql.
*/

--drop sequence CustomerType_NUM_SEQ;

CREATE SEQUENCE CustomerType_NUM_SEQ
    START WITH 101
    INCREMENT BY 1
    NOCACHE;