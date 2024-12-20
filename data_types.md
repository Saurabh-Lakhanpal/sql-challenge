- **smallint**  
  - Range: -32768 to +32767  
  - Use: Small range integers  
  - Example: ```CREATE TABLE example (id smallint); INSERT INTO example VALUES (32767);```

- **integer**  
  - Range: -2147483648 to +2147483647  
  - Use: General integer use  
  - Example: ```CREATE TABLE users (user_id integer); INSERT INTO users VALUES (2147483647);```

- **bigint**  
  - Range: -9223372036854775808 to 9223372036854775807  
  - Use: Large integer values  
  - Example: ```CREATE TABLE big_data (big_val bigint); INSERT INTO big_data VALUES (9223372036854775807);```

- **decimal** (or **numeric**)  
  - Range: Up to 131072 digits before the decimal point; up to 16383 digits after  
  - Use: Exact numeric values with decimal places  
  - Example: ```CREATE TABLE prices (price decimal(10,2)); INSERT INTO prices VALUES (12345.67);```

- **real**  
  - Range: Approximately -3.4E+38 to +3.4E+38  
  - Use: Single-precision floating-point numbers  
  - Example: ```CREATE TABLE measurements (temp real); INSERT INTO measurements VALUES (98.6);```

- **double precision**  
  - Range: Approximately -1.8E+308 to +1.8E+308  
  - Use: Double-precision floating-point numbers  
  - Example: ```CREATE TABLE scientific_data (data_point double precision); INSERT INTO scientific_data VALUES (1.23456789E+20);```

- **char(n)** (or **character(n)**)  
  - Range: Fixed-length string (n characters)  
  - Use: Fixed-length strings, padded with spaces  
  - Example: ```CREATE TABLE codes (status char(3)); INSERT INTO codes VALUES ('OK ');```

- **varchar(n)** (or **character varying(n)**)  
  - Range: Variable-length string up to n characters  
  - Use: Variable-length strings  
  - Example: ```CREATE TABLE names (full_name varchar(100)); INSERT INTO names VALUES ('John Doe');```

- **text**  
  - Range: Unlimited length  
  - Use: When no length limit is needed  
  - Example: ```CREATE TABLE comments (content text); INSERT INTO comments VALUES ('A very long comment can go here');```

- **bytea**  
  - Range: Binary strings  
  - Use: Storing binary data like images or encrypted data  
  - Example: ```CREATE TABLE images (image_data bytea); INSERT INTO images VALUES (decode('1234', 'hex'));```

- **date**  
  - Range: 4713 BC to 5874897 AD  
  - Use: Date without time  
  - Example: ```CREATE TABLE events (event_date date); INSERT INTO events VALUES ('2023-12-31');```

- **time**  
  - Range: 00:00:00 to 24:00:00  
  - Use: Time without date  
  - Example: ```CREATE TABLE schedules (start_time time); INSERT INTO schedules VALUES ('14:30:00');```

- **timestamp**  
  - Range: 4713 BC to 294276 AD  
  - Use: Date and time  
  - Example: ```CREATE TABLE logs (log_time timestamp); INSERT INTO logs VALUES ('2023-12-31 23:59:59');```

- **timestamptz** (or **timestamp with time zone**)  
  - Range: Same as timestamp  
  - Use: Date and time with time zone information  
  - Example: ```CREATE TABLE global_events (event_time timestamptz); INSERT INTO global_events VALUES ('2023-12-31 23:59:59+00');```

- **interval**  
  - Range: -178000000 years to 178000000 years  
  - Use: Time intervals  
  - Example: ```CREATE TABLE workout (session_length interval); INSERT INTO workout VALUES ('1 hour 30 minutes');```

- **boolean**  
  - Range: TRUE, FALSE, NULL  
  - Use: Logical states  
  - Example: ```CREATE TABLE flags (is_active boolean); INSERT INTO flags VALUES (true);```

- **money**  
  - Use: Monetary amounts  
  - Example: ```CREATE TABLE transactions (amount money); INSERT INTO transactions VALUES ('123.45');```