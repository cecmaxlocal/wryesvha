Of course. Here is a comprehensive `README.md` file designed for an IDE Engineer developing a desktop application. It incorporates all the specified elements: project name, file structure, and the "Raku Butterfly" concept.

![IDEEngineer](/matrix/cec/image/logon.jpg)

---

# 🦋 wryesvha (Raku Butterfly)

![Build Status](https://img.shields.io/badge/build-passing-green)
![Version](https://img.shields.io/badge/version-v0.1.0--alpha-blue)
![License](https://img.shields.io/badge/license-MIT-lightgrey)
![Raku Version](https://img.shields.io/badge/Raku-v2023.11-blueviolet)

**Raku Butterfly** is a lightweight, extensible, and cross-platform Integrated Development Environment (IDE) engineered for the Raku programming language. It focuses on providing a fast, responsive, and aesthetically pleasing coding experience, inspired by the elegance and transformative nature of a butterfly.

This repository contains the full source code, development files, and engineering assets for the `wryesvha` desktop application.

## Table of Contents

1.  [Features](#features)
2.  [Project Structure](#project-structure)
3.  [Prerequisites](#prerequisites)
4.  [Getting Started: Installation & Setup](#getting-started-installation--setup)
5.  [Usage](#usage)
6.  [Development & Debugging](#development--debugging)
7.  [Running Tests](#running-tests)
8.  [Documentation](#documentation)
9.  [Contributing](#contributing)
10. [License](#license)

## Features

*   **Syntax Highlighting:** Native, high-performance Raku syntax analysis.
*   **Debugger Integration:** Visual debugging tools that hook directly into Raku's capabilities.
*   **Extensible Plugin System:** Add new features, themes, and language support through a simple API.
*   **Cross-Platform:** Built to run on Linux, macOS, and Windows.
*   **Lightweight Core:** Starts quickly and maintains a low memory footprint.

## Project Structure

The repository is organized to support a clear separation of concerns for IDE engineers and developers. Understanding this structure is key to contributing effectively.

```
./wryesvha/
├── bin/
│   └── butterfly         # Main executable script to launch the IDE.
│
├── lib/
│   ├── Wryesvha/         # Core Raku modules for the application logic.
│   │   ├── UI.rakumod
│   │   └── Core.rakumod
│   └── META6.json        # Raku module metadata for dependencies.
│
├── test/
│   ├── basic.t           # Basic application startup tests.
│   └── core-logic.t      # Unit tests for the core library.
│
├── doc/
│   ├── api/              # Auto-generated API documentation.
│   └── development.md    # Guide for developers contributing to the project.
│
├── image/
│   ├── logo.svg          # Application logo.
│   └── icons/            # UI icons and assets.
│
├── debug/
│   ├── logs/             # Verbose application logs (created at runtime).
│   └── dumps/            # Crash dumps or memory profiles.
│   └── .gitkeep          # Placeholder to ensure the directory is in git.
│
└── README.md             # This file.
```

### Directory Guide

*   `bin/`: Contains the main executable script(s). This is the entry point for the application.
*   `lib/`: The heart of the application. All core Raku source code (`.rakumod`, `.rakutest`) resides here.
*   `test/`: The test suite. We use Raku's standard `Test` module. All files ending in `.t` are executed by the test runner.
*   `doc/`: Project documentation, including development guides, architecture overviews, and API references.
*   `image/`: Static image assets, icons, and themes used by the application's user interface.
*   `debug/`: **Development-Only.** This directory is for files generated during a debug session. It is git-ignored but crucial for development. It holds detailed logs, crash reports, and build artifacts from debug compilations.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

*   [Raku](https://raku.org/downloads/) (v2023.11 or newer)
*   [Zef](https://github.com/ugexe/zef) - Raku's standard module installer.
*   A GUI Backend Library (e.g., `GTK+`, `Cairo`). This project may have specific dependencies listed in `META6.json`.

## Getting Started: Installation & Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/wryesvha.git
    cd wryesvha
    ```

2.  **Install dependencies:**
    Use `zef` to install all required modules listed in `META6.json`.
    ```bash
    zef install --deps-only .
    ```

3.  **Run the application:**
    Execute the main script from the `bin` directory. The `-Ilib` flag tells Raku to look for modules in our `lib` folder.
    ```bash
    raku -Ilib bin/butterfly
    ```

## Usage

To launch Raku Butterfly, simply run the main executable:

```bash
./bin/butterfly
```

For command-line options and help:

```bash
./bin/butterfly --help
```

## Development & Debugging

Engineers working on this project should utilize the built-in debugging features.

### Enabling Debug Mode

Run the application with the `BUTTERFLY_DEBUG` environment variable set to `1`. This will enable verbose logging and other debug-time checks.

```bash
BUTTERFLY_DEBUG=1 raku -Ilib bin/butterfly
```

### Debug Files

*   **Logs:** When in debug mode, detailed logs are written to `./debug/logs/app.log`. This is the first place to look when troubleshooting.
*   **Crash Dumps:** In the event of a critical failure, the application will attempt to write a core dump or stack trace to the `./debug/dumps/` directory.

## Running Tests

This project uses the standard Raku testing harness. You can run the entire test suite using the `prove` utility.

```bash
# Run all tests verbosely from the project root
prove -e "raku -I." -vr test/
```

## Documentation

Project documentation is located in the `doc/` directory. For an in-depth guide on the project's architecture and contribution workflow, please read `doc/development.md`.

API documentation can be generated if a tool like `Pod::To::Markdown` is configured.

## Contributing

We welcome contributions! Please see `doc/development.md` for our coding standards and pull request process.

1.  Fork the repository.
2.  Create a new branch (`git checkout -b feature/your-feature`).
3.  Commit your changes (`git commit -am 'Add some feature'`).
4.  Push to the branch (`git push origin feature/your-feature`).
5.  Create a new Pull Request.

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.