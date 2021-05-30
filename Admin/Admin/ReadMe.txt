1. Open cmd.exe then type

netstat -aon | find ":8080" | find "LISTENING"

2. You will see like this result

TCP 0.0.0.0:8080 0.0.0.0:0 LISTENING 1464

Copy PID "1464".

3. Open Task Manager (Ctrl+Alt+del), go to the details tag, then find the program or service via PID that is listening to the port 8080 then STOP it or End process.