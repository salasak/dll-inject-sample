typedef BOOL (WINAPI *_ptr_api_ms_win_core_processthreads_l1_1_2__CreateProcessW)(LPCTSTR lpApplicationName,LPTSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,BOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCTSTR lpCurrentDirectory,LPSTARTUPINFO lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
static BOOL WINAPI _new_api_ms_win_core_processthreads_l1_1_2__CreateProcessW(LPCTSTR lpApplicationName,LPTSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,BOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCTSTR lpCurrentDirectory,LPSTARTUPINFO lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
static XYO::Win::Inject::Hook::HookProc _hook_api_ms_win_core_processthreads_l1_1_2__CreateProcessW;
#define _original_api_ms_win_core_processthreads_l1_1_2__CreateProcessW ((_ptr_api_ms_win_core_processthreads_l1_1_2__CreateProcessW)(_hook_api_ms_win_core_processthreads_l1_1_2__CreateProcessW.originalProc))
