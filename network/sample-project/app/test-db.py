import psycopg2

# FastAPIの機能は削除し、直接実行されるスクリプトにします

print("--- プログラム開始 ---")

try:
    # DBに接続
    print("Connecting to Database...")
    with psycopg2.connect(
        host="localhost",
        port="5432",
        user="user",
        password="password",
        database="testdb"
    ) as connection:
        
        # カーソルを取得
        with connection.cursor() as cursor:
            # SQLを実行
            print("Sending Query: SELECT * FROM users;")
            cursor.execute("SELECT * FROM users;")
            
            # 結果を取得
            rows = cursor.fetchall()
            
            # 結果を表示
            print("\n[ 取得データ ]")
            for row in rows:
                print(row)
            print("--------------------\n")

except Exception as e:
    print(f"Error occurred: {e}")

print("--- プログラム終了 ---")