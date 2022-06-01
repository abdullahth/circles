import os

config: dict = {
    'port': os.environ.get("PORT") or 3000,
    'auth_key': os.environ.get("AUTH_KEY") or "",
    'api_link': os.environ.get("API_LINK") or "http://127.168.1.1:3000"
}


def main():
    import sys
    mode = None

    if len(sys.argv) > 1:
        mode = sys.argv[1]

    os.system("flutter clean")
    os.system("flutter pub get")
    os.system("clear")
    if mode == '--mobile':
        os.system(
            'flutter run -d emulator --dart-define="API_GLOBAL_LINK"={} --dart-define="AUTH_KEY"={}'
            .format(config['api_link'], config['auth_key'])
        )

        return

    if mode == '--windows':
        os.system(
            'flutter run -d windows --dart-define="API_GLOBAL_LINK"={} --dart-define="AUTH_KEY"={}'
            .format(config['api_link'], config['auth_key'])
        )

        return


    os.system(
        'flutter run -d chrome --web-port {} --dart-define="API_GLOBAL_LINK"={} --dart-define="AUTH_KEY"={}'
        .format(config['port'], config['api_link'], config['auth_key'])
        )

if __name__ == '__main__':
    main()
