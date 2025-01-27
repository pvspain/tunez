# PostgreSQL notes

1. The Postgres service must be running before a Phoenix/Ash app is started

    ```bash
    pg_ctl start
    ```

1. The Postgres service can be stopped.

    ```bash
    pg_ctl stop
    ```

1. Phoenix uses the `user:password` combination `postgres:postgres` by default.

1. To run the Postgres query tool (`psql`) the syntax is

    ```bash
    psql [database-name] [username]
    ```

1. username defaults to the logged-in user
1. username should be 'postgres` unless another user has been created in the database to be opened

    ```bash
    psql [database-name] postgres
    ```

1. Create a new user for a database within a `psql` session:

    ```psql
    create user username;
    ```

1. List users in a database within a `psql` session:

    ```psql
    \du
    ```
