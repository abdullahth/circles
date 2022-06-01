packages: list = [
    "http",
    "provider",
    "get",
    "get_storage",
    "path_provider",
    "flutter_rating_bar",
    "image_picker",
    "intl",
    "cached_network_image",
    "permission_handler",
    "fluttertoast",
    "connectivity_plus",
    "flutter_launcher_icons",
    "flutter_native_splash",
    "flutter_screenutil",
    "pull_to_refresh",
    "badges",
    "qr_flutter",
    "fluro",
]


def main():
    import os
    os.system("clear")

    for pack in packages: 
        try:
            os.system("flutter pub add {}".format(pack))
        except Exception as e:
            print('''
                Package: {}
                Error: {}
                '''.format(pack["name"], e))


main()
