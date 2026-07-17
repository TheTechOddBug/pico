# How to ban an ip address from creating an account

You also need to [delete the original account](./delete-account.md) because blocking ip only works for the signup flow in our TUI.

Log into production db, then drop into psql

```bash
cd pico
make psql
```

```sql
insert into block_signups (ip, reason) values ('0.0.0.0', 'you spam too much');
```

The IP column is an [inet data type](https://www.postgresql.org/docs/current/datatype-net-types.html#DATATYPE-INET) to enforce correct structure.
