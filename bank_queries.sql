CREATE OR REPLACE TRIGGER branch_insert_trigger
BEFORE INSERT ON branch
FOR EACH ROW
BEGIN
    -- Logic for insert trigger on BRANCH table
    DBMS_OUTPUT.PUT_LINE('New branch inserted: ' || :NEW.branch_code || ', ' || :NEW.city_name);
END;
/

CREATE OR REPLACE TRIGGER branch_delete_trigger
BEFORE DELETE ON branch
FOR EACH ROW
BEGIN
    -- Logic for delete trigger on BRANCH table
    DBMS_OUTPUT.PUT_LINE('Branch deleted: ' || :OLD.branch_code || ', ' || :OLD.city_name);
END;
/

CREATE OR REPLACE TRIGGER branch_update_trigger
BEFORE UPDATE ON branch
FOR EACH ROW
BEGIN
    IF :OLD.branch_details != :NEW.branch_details THEN
        DBMS_OUTPUT.PUT_LINE('Branch details updated for branch: ' || :OLD.branch_code);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER customers_insert_trigger
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome, ' || :NEW.first_name || ' ' || :NEW.last_name || '! You have been registered successfully.');
END;
/

CREATE OR REPLACE TRIGGER customers_delete_trigger
BEFORE DELETE ON customers
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Customer deleted: ' || :OLD.customer_id || ', ' || :OLD.first_name || ' ' || :OLD.last_name);
END;
/


CREATE OR REPLACE TRIGGER customers_update_trigger
BEFORE UPDATE ON customers
FOR EACH ROW
BEGIN
    IF :OLD.street_name != :NEW.street_name THEN
        DBMS_OUTPUT.PUT_LINE('Customer address updated for customer: ' || :OLD.customer_id);
    END IF;
END;
/

CREATE OR REPLACE TRIGGER accounts_delete_trigger
BEFORE DELETE ON accounts
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Deleting account: ' || :OLD.account_number);
    -- Additional actions can be added here if needed
END;
/

