# client.py

import httpx
import sys

TARGET_HOST = 'http://127.0.0.1:8080'  # httpxは完全なURLを必要とします

def send_request(http_version: str, method: str, path: str, data: dict = None):
    """
    httpxを使用してHTTPリクエストを送信する関数。
    
    Args:
        http_version (str): '1.1' または '2'
        method (str): HTTPメソッド (例: 'GET', 'POST')
        path (str): リクエストパス (例: '/testpath')
        data (dict): POSTリクエストなどのボディデータ
    """
    
    # HTTPバージョンをhttpxの形式に変換
    if http_version == '2':
        http2_enabled = True
        version_label = 'HTTP/2'
    elif http_version == '1.1':
        http2_enabled = False
        version_label = 'HTTP/1.1'
    else:
        print(f"Error: Unsupported HTTP version '{http_version}'. Use '1.1' or '2'.", file=sys.stderr)
        return

    # httpx.Clientを初期化（HTTP/2サポートを設定）
    try:
        with httpx.Client(http2=http2_enabled) as client:
            url = TARGET_HOST + path
            
            print(f"Sending {version_label} {method} request to {url}...")
            
            # メソッドとデータに基づいてリクエストを送信
            if method.upper() == 'GET':
                response = client.get(url)
            elif method.upper() == 'POST':
                # POSTの場合はJSONデータを送信
                response = client.post(url, json=data)
            else:
                print(f"Error: Unsupported method '{method}'.", file=sys.stderr)
                return

            # HTTPLabからのレスポンスを出力
            print("\n--- Received Response ---")
            print(f"Status Code: {response.status_code}")
            print(f"HTTP Version: {response.http_version}")
            print(f"Headers: {response.headers}")
            print(f"Body:\n{response.text}")
            print("-------------------------")

    except httpx.ConnectError:
        print(f"\nError: Connection refused. Is HTTPLab running on {TARGET_HOST}?", file=sys.stderr)
    except Exception as e:
        print(f"\nAn error occurred: {e}", file=sys.stderr)


# 実行例
if __name__ == "__main__":
    
    ## 1. HTTP/1.1 GETリクエスト
    print("--- Test Case 1: HTTP/1.1 GET ---")
    send_request(http_version='1.1', method='GET', path='/api/v1')
    
    print("\n" + "="*40 + "\n")
    
    ## 2. HTTP/2 GETリクエスト
    # (注: サーバーがHTTP/2に対応していない場合、フォールバックするかエラーになる可能性があります)
    print("--- Test Case 2: HTTP/2 GET ---")
    send_request(http_version='2', method='GET', path='/http2-test')
    
    print("\n" + "="*40 + "\n")
    
    ## 3. HTTP/1.1 POSTリクエスト (データ送信)
    print("--- Test Case 3: HTTP/1.1 POST with JSON ---")
    post_data = {"user": "OCUST013", "action": "submit"}
    send_request(http_version='1.1', method='POST', path='/submit', data=post_data)