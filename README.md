# Frpc-iOS

## How 2 build 

### 1. Put the frp resource code under gopath  e.g. github.com/fatedier/frp/cmd/frpc and other related 3rd code or lib under the related path
### 2. Change the main.go's package name(！= "main"),you can custom the package name,e.g. FRPManager 
### 3. gomobile bind -target=ios 
### 4. Change the Project frpc.ini with your information，then have fun.
