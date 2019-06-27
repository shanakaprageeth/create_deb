# Tutorial to create your own deb file
## Description
This script allows you to create your own deb package

## Prerequisites
apt Advanced Package Tool repo manager (available in debian ubuntu systems)

## Getting started
You will need to edit the following files with your details.
- control : package control file with your package details
- hello_exe : use your own executable here
- postint : post installation message
- create_deb.sh : script that builds and install the deb

## Installing
Execute the script using following command:
```
./create_deb.sh
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
