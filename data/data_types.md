A comprehensive list of data types available in PostgreSQL, along with their use cases and SQL examples:

### Numeric Types
- **smallint**: 2-byte integer.
  - **Use Case**: Suitable for small-range integer values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        id smallint
    );
    ```

- **integer**: 4-byte integer.
  - **Use Case**: Standard integer type for most use cases.
  - **Example**:
    ```sql
    CREATE TABLE example (
        id integer
    );
    ```

- **bigint**: 8-byte integer.
  - **Use Case**: Suitable for large-range integer values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        id bigint
    );
    ```

- **decimal**: User-specified precision, exact numeric.
  - **Use Case**: Suitable for financial calculations requiring exact precision.
  - **Example**:
    ```sql
    CREATE TABLE example (
        amount decimal(10, 2)
    );
    ```

- **numeric**: User-specified precision, exact numeric.
  - **Use Case**: Similar to `decimal`, used for exact numeric values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        amount numeric(10, 2)
    );
    ```

- **real**: 4-byte floating point.
  - **Use Case**: Suitable for approximate numeric values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        value real
    );
    ```

- **double precision**: 8-byte floating point.
  - **Use Case**: Suitable for high-precision approximate numeric values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        value double precision
    );
    ```

- **serial**: Auto-incrementing 4-byte integer.
  - **Use Case**: Suitable for primary keys.
  - **Example**:
    ```sql
    CREATE TABLE example (
        id serial PRIMARY KEY
    );
    ```

- **bigserial**: Auto-incrementing 8-byte integer.
  - **Use Case**: Suitable for large-range primary keys.
  - **Example**:
    ```sql
    CREATE TABLE example (
        id bigserial PRIMARY KEY
    );
    ```

### Monetary Types
- **money**: Currency amount.
  - **Use Case**: Suitable for storing monetary values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        price money
    );
    ```

### Character Types
- **character varying(n)** or **varchar(n)**: Variable-length with limit.
  - **Use Case**: Suitable for strings with a known maximum length.
  - **Example**:
    ```sql
    CREATE TABLE example (
        name varchar(50)
    );
    ```

- **character(n)** or **char(n)**: Fixed-length, blank-padded.
  - **Use Case**: Suitable for fixed-length strings.
  - **Example**:
    ```sql
    CREATE TABLE example (
        code char(10)
    );
    ```

- **text**: Variable-length with no limit.
  - **Use Case**: Suitable for long text strings.
  - **Example**:
    ```sql
    CREATE TABLE example (
        description text
    );
    ```

### Binary Data Types
- **bytea**: Binary data ("byte array").
  - **Use Case**: Suitable for storing binary data.
  - **Example**:
    ```sql
    CREATE TABLE example (
        data bytea
    );
    ```

### Date/Time Types
- **timestamp (without time zone)**: Both date and time (no time zone).
  - **Use Case**: Suitable for date and time values without time zone information.
  - **Example**:
    ```sql
    CREATE TABLE example (
        created_at timestamp
    );
    ```

- **timestamp (with time zone)**: Both date and time (with time zone).
  - **Use Case**: Suitable for date and time values with time zone information.
  - **Example**:
    ```sql
    CREATE TABLE example (
        created_at timestamptz
    );
    ```

- **date**: Calendar date (year, month, day).
  - **Use Case**: Suitable for storing dates.
  - **Example**:
    ```sql
    CREATE TABLE example (
        birthdate date
    );
    ```

- **time (without time zone)**: Time of day (no time zone).
  - **Use Case**: Suitable for storing time values without time zone information.
  - **Example**:
    ```sql
    CREATE TABLE example (
        start_time time
    );
    ```

- **time (with time zone)**: Time of day (with time zone).
  - **Use Case**: Suitable for storing time values with time zone information.
  - **Example**:
    ```sql
    CREATE TABLE example (
        start_time timetz
    );
    ```

- **interval**: Time span.
  - **Use Case**: Suitable for storing durations.
  - **Example**:
    ```sql
    CREATE TABLE example (
        duration interval
    );
    ```

### Boolean Type
- **boolean**: Logical Boolean (true/false).
  - **Use Case**: Suitable for storing true/false values.
  - **Example**:
    ```sql
    CREATE TABLE example (
        is_active boolean
    );
    ```

### Enumerated Types
- **enum**: User-defined enumerated types.
  - **Use Case**: Suitable for storing a predefined set of values.
  - **Example**:
    ```sql
    CREATE TYPE mood AS ENUM ('happy', 'sad', 'neutral');
    CREATE TABLE example (
        current_mood mood
    );
    ```

### Geometric Types
- **point**: A geometric point (x, y).
  - **Use Case**: Suitable for storing geometric points.
  - **Example**:
    ```sql
    CREATE TABLE example (
        location point
    );
    ```

- **line**: Infinite line.
  - **Use Case**: Suitable for storing geometric lines.
  - **Example**:
    ```sql
    CREATE TABLE example (
        path line
    );
    ```

- **lseg**: Line segment.
  - **Use Case**: Suitable for storing line segments.
  - **Example**:
    ```sql
    CREATE TABLE example (
        segment lseg
    );
    ```

- **box**: Rectangular box.
  - **Use Case**: Suitable for storing rectangular boxes.
  - **Example**:
    ```sql
    CREATE TABLE example (
        bounding_box box
    );
    ```

- **path**: Geometric path.
  - **Use Case**: Suitable for storing geometric paths.
  - **Example**:
    ```sql
    CREATE TABLE example (
        route path
    );
    ```

- **polygon**: Closed geometric path (polygon).
  - **Use Case**: Suitable for storing polygons.
  - **Example**:
    ```sql
    CREATE TABLE example (
        area polygon
    );
    ```

- **circle**: Circle.
  - **Use Case**: Suitable for storing circles.
  - **Example**:
    ```sql
    CREATE TABLE example (
        circle_area circle
    );
    ```

### Network Address Types
- **cidr**: IPv4 or IPv6 network.
  - **Use Case**: Suitable for storing network addresses.
  - **Example**:
    ```sql
    CREATE TABLE example (
        network cidr
    );
    ```

- **inet**: IPv4 or IPv6 host address.
  - **Use Case**: Suitable for storing host addresses.
  - **Example**:
    ```sql
    CREATE TABLE example (
        ip_address inet
    );
    ```

- **macaddr**: MAC address.
  - **Use Case**: Suitable for storing MAC addresses.
  - **Example**:
    ```sql
    CREATE TABLE example (
        mac_address macaddr
    );
    ```

- **macaddr8**: MAC address (EUI-64 format).
  - **Use Case**: Suitable for storing MAC addresses in EUI-64 format.
  - **Example**:
    ```sql
    CREATE TABLE example (
        mac_address macaddr8
    );
    ```

### Bit String Types
- **bit(n)**: Fixed-length bit string.
  - **Use Case**: Suitable for storing fixed-length bit strings.
  - **Example**:
    ```sql
    CREATE TABLE example (
        bits bit(8)
    );
    ```

- **bit varying(n)** or **varbit(n)**: Variable-length bit string.
  - **Use Case**: Suitable for storing variable-length bit strings.
  - **Example**:
    ```sql
    CREATE TABLE example (
        bits varbit(8)
    );
    ```

### Text Search Types
- **tsvector**: Text search vector.
  - **Use Case**: Suitable for full-text search indexing.
  - **Example**:
    ```sql
    CREATE TABLE example (
        document tsvector
    );
    ```

- **tsquery**: Text search query.
  - **Use Case**: Suitable for full-text search queries.
  - **Example**:
    ```sql
    SELECT * FROM example WHERE document @@ to_tsquery('search_term');
    ```