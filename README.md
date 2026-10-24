# free-astra-win

Windows batch launchers for [Zhao73/free-astra](https://github.com/Zhao73/free-astra).

> **Important:** this is a Windows launcher, not a native Windows port. The upstream project relies on Bash and a Unix-like environment, so these scripts run it inside WSL (Ubuntu recommended).

## Requirements

- Windows 10/11 with WSL and an Ubuntu distribution installed
- Git and Python 3 inside WSL
- Codex CLI installed and logged in **inside WSL** (Windows Codex login is separate)
- A signed-in Prism browser session, as required by the upstream project

## Usage

1. Open Ubuntu/WSL and make sure Codex works there (`codex login`).
2. Double-click `install.bat`. It clones/updates the upstream repository at `~/free-astra-win-upstream`, installs the Python `zstandard` dependency, and starts the upstream installer.
3. Double-click `free-astra.bat` to launch Codex with `prism-astra`.
4. Run `uninstall.bat` to disable the upstream wiring and remove its optional keep-alive service. It deliberately leaves the source folder and session file in place.

If dependency installation fails because your Python distribution restricts global/user pip installs, follow the upstream project's setup instructions and install `zstandard` in a suitable virtual environment.

## Security and account warning

free-astra uses browser-session cookies to access Prism through an unpublished interface. Those cookies are sensitive, the interface may change, and using it may violate service terms or result in account restrictions. The upstream agent can execute commands and edit files in its working environment. Review the upstream code and warnings before proceeding; do not share your session file.

Upstream source and license: [Zhao73/free-astra](https://github.com/Zhao73/free-astra) (MIT). This Windows wrapper is a separate project and is not affiliated with OpenAI.
