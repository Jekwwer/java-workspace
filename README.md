# Java Template

This repository serves as a **Java project template** designed to work seamlessly with **GitHub Codespaces**.
It includes best practices for development, testing, CI/CD, linting, formatting, coverage reporting, and automated dependency updates.

## 🚀 **Features**

- Pre-configured **GitHub Codespaces** development environment
- **Maven**-based build and dependency management
- **JUnit 5** for testing
- **Checkstyle** with Google Java Style for code quality checks
- **Hadolint** for Dockerfile linting
- **JaCoCo** for code coverage
- **Codecov** integration for hosted coverage reports
- **Pre-commit** hooks to ensure code quality before commits
- **Dependabot** for automated dependency and GitHub Actions updates
- **cspell** for spell-checking code and documentation
- **EditorConfig** to maintain consistent coding styles across editors
- **Makefile** for convenient build and run commands

## 📂 **Project Structure**

```
java-template/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .github/
│   ├── workflows/
│   │   ├── test.yml
│   │   └── coverage.yml
│   └── dependabot.yml
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── jekwwer/
│   │   │           └── template/
│   │   │               └── App.java
│   │   └── resources/
│   └── test/  # If you choose to keep tests here or under src/test/java
│       └── java/
│           └── com/
│               └── jekwwer/
│                   └── template/
│                       └── AppTest.java
├── .editorconfig           # Consistent coding styles across editors
├── .gitignore              # Ignore common build artifacts and IDE files
├── .pre-commit-config.yaml # Pre-commit hooks configuration
├── checkstyle.xml          # Checkstyle configuration (Google Style)
├── cspell.json             # cspell configuration for spell checking
├── LICENSE                 # Project license (MIT)
├── Makefile                # Simplifies build, test, and run commands
├── README.md               # Project documentation
└── pom.xml                 # Maven build configuration
```

**Note:** Adjust the test directory structure to `src/test/java` if you prefer the conventional Maven layout.

## 🛠️ **Setup**

1. **Open in Codespaces**
   Open this repository in **GitHub Codespaces** to get a fully configured environment.

2. **Build the Project**

   ```bash
   make build
   ```

3. **Run the Application**
   ```bash
   make run
   ```

## 📦 **Usage**

1. Modify **App.java** to add your application logic.
2. Add new classes under **`src/main/java/com/jekwwer/template`**.
3. Add new tests under **`src/test/java/com/jekwwer/template`** (or keep them in `src/test` if you prefer).

## ✅ **Run Tests**

To run all tests:

```bash
make test
```

To generate coverage reports:

```bash
make coverage
```

The JaCoCo coverage report will be located at `target/site/jacoco/index.html`. Coverage results are also uploaded to Codecov on CI runs.

## 📜 **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more information.
