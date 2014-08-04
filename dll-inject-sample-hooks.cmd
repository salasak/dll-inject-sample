@echo off
Set GEN=xyo-generate-hook.exe

del /F /Q new_kernel32.cpp
del /F /Q new_kernel32__GetProcAddress.xpp
%GEN% kernel32 WINAPI BOOL        99  CreateProcessA "LPCTSTR lpApplicationName,LPTSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,BOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCTSTR lpCurrentDirectory,LPSTARTUPINFO lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation"
%GEN% kernel32 WINAPI BOOL        103 CreateProcessW "LPCTSTR lpApplicationName,LPTSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,BOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCTSTR lpCurrentDirectory,LPSTARTUPINFO lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation"
%GEN% kernel32 WINAPI HMODULE     578 LoadLibraryA   "const char *lpFileName"
%GEN% kernel32 WINAPI HINSTANCE   579 LoadLibraryExA "const char *lpLibFileName,HANDLE hFile,DWORD dwFlags"
%GEN% kernel32 WINAPI HINSTANCE   580 LoadLibraryExW "const wchar_t *lpLibFileName,HANDLE hFile,DWORD dwFlags"
%GEN% kernel32 WINAPI HMODULE     581 LoadLibraryW   "const wchar_t *lpFileName"
%GEN% kernel32 WINAPI DWORD       582 LoadModule     "LPCSTR lpModuleName,LPVOID lpParameterBlock"
%GEN% kernel32 WINAPI FARPROC     408 GetProcAddress "HMODULE hModule,LPCSTR lpProcName"

del /F /Q new_wsock32.cpp
%GEN% wsock32 WSAAPI int 4  connect "SOCKET s, const struct sockaddr *addr, int sz"
%GEN% wsock32 WSAAPI int 16 recv    "SOCKET s, char* buf,int len,int flags"
%GEN% wsock32 WSAAPI int 19 send    "SOCKET s,const char* buf,int len,int flags"
%GEN% wsock32 WSAAPI int 2  bind    "SOCKET s, const struct sockaddr *addr, int sz"

del /F /Q new_wininet.cpp
%GEN% wininet STDAPICALLTYPE HINTERNET 229 InternetConnectA "HINTERNET hInternet,LPCTSTR lpszServerName,INTERNET_PORT nServerPort,LPCTSTR lpszUsername,LPCTSTR lpszPassword,DWORD dwService,DWORD dwFlags,DWORD_PTR dwContext"
%GEN% wininet STDAPICALLTYPE HINTERNET 230 InternetConnectW "HINTERNET hInternet,WCHAR * lpszServerName,INTERNET_PORT nServerPort,WCHAR * lpszUsername,WCHAR * lpszPassword,DWORD dwService,DWORD dwFlags,DWORD_PTR dwContext"
%GEN% wininet STDAPICALLTYPE BOOL      272 InternetReadFile "HINTERNET hFile,LPVOID lpBuffer,DWORD dwNumberOfBytesToRead,LPDWORD lpdwNumberOfBytesRead"

del /F /Q new_ws2_32.cpp
%GEN% ws2_32 WSAAPI int 4  connect    "SOCKET s,const struct sockaddr *addr,int sz"
%GEN% ws2_32 WSAAPI int 16 recv       "SOCKET s, char* buf,int len,int flags"
%GEN% ws2_32 WSAAPI int 30 WSAConnect "SOCKET s,const struct sockaddr *name,int namelen,void * lpCallerData,void * lpCalleeData,void * lpSQOS,void * lpGQOS"
%GEN% ws2_32 WSAAPI int 19 send       "SOCKET s,const char* buf,int len,int flags"
%GEN% ws2_32 WSAAPI int 2  bind       "SOCKET s, const struct sockaddr *addr, int sz"
