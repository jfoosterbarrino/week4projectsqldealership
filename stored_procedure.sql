-- CREATE OR REPLACE PROCEDURE discount(
--     percent INTEGER,
--     customer_num INTEGER
-- )

-- AS
-- $$
-- BEGIN
--     UPDATE invoice
--     SET amount = amount - percent
--     WHERE customer_id = customer_num;
--     COMMIT;
-- END
-- $$
-- LANGUAGE plpgsql;

-- CALL discount(5, 3)

SELECT *
FROM invoice;