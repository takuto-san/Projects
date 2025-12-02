from fastapi import FastAPI
import socket
import psycopg2

app = FastAPI()

@app.get("/")
def read_root():
    hostname = socket.gethostname()
    return {
        "message": "Hello from App Server",
        "hostname": hostname,
        "ip": socket.gethostbyname(hostname)
    }

@app.get("/db-test")
def db_test():
    try:
        with psycopg2.connect(
            host="localhost",
            port="5432",
            user="user",
            password="password",
            database="testdb"
        ) as connection:
            with connection.cursor() as cursor:
                cursor.execute("SELECT * FROM users;")
                rows = cursor.fetchall()
                return {"status": "success", "data": rows}
    except Exception as e:
        return {"status": "error", "message": str(e)}