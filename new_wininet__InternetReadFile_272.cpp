static BOOL STDAPICALLTYPE _new_wininet__InternetReadFile_272(HINTERNET hFile,LPVOID lpBuffer,DWORD dwNumberOfBytesToRead,LPDWORD lpdwNumberOfBytesRead) {
	BOOL retV;
	retV=(*_original_wininet__InternetReadFile_272)(hFile,lpBuffer,dwNumberOfBytesToRead,lpdwNumberOfBytesRead);
	return retV;
};