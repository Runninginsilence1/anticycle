go env -w GOOS=windows
go env -w GOARCH=amd64
# go mod vendor
go mod tidy
go build -o anticycle.exe -v ./cmd/anticycle/main.go

# 记得清除
Copy-Item -Path anticycle.exe -Destination "C:\zzk\util_by_zzk\anticycle.exe" -Force
