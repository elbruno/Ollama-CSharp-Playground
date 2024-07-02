# Learning how to use the Aspire Dashboard

## Introduction

Welcome to the Aspire Dashboard sample. This project showcases how to integrate Phi-3, a cutting-edge Small Language Model (SLM), with telemetry and logging using OpenTelemetry in a .NET environment.

## Scenario Overview

The scenario covered by this project involves creating a chatbot using the Phi-3 model. The chatbot is designed to answer user questions in a humorous and concise manner, utilizing emojis when possible. The project also integrates telemetry and logging to monitor and trace the chatbot's performance and interactions.

## Code Explanation

The `Program.cs` file is the main entry point of the application and is structured as follows:

- **Define Endpoints**:
  - `otlpEndPoint` and `phi3EndPoint` are defined for telemetry and Phi-3 endpoints respectively.

- **Create Kernel and Add Phi-3 Chat Completion**:
  1. A kernel builder is created using `Kernel.CreateBuilder()`.
  2. Phi-3 chat completion is added to the kernel with the specified model ID, endpoint, and API key.

- **Add OTLP Exporter for Logs**:
  1. A `LoggerFactory` is created and configured to use OpenTelemetry for exporting logs.
  2. The logger is set to include formatted messages and scopes, with a minimum log level of `Trace`.

- **Build Kernel**:
  - The kernel is built using the configured builder.

- **Add Trace and Meter Providers**:
  - Tracer and meter providers are created using OpenTelemetry to monitor the `Microsoft.SemanticKernel` namespace.
  - OTLP exporters are added to both providers.

- **Start Chat**:
  1. A chat service is retrieved from the kernel.
  2. A chat history object is initialized with a system message defining the chatbot's behavior.
  3. A loop is started to continuously read user input, process it using the Phi-3 model, and display the response.

- **Logging**:
  - User questions and Phi-3 responses are logged using a helper method `AddLog`.

- **Helper Method**:
  - `AddLog` method retrieves the logger from the kernel's services and logs the provided message.

This setup ensures that the chatbot is not only functional but also monitored and traceable, providing valuable insights into its performance and interactions.

## How to Test

1. Open a terminal and navigate to the current project.

    ```bash
    cd .\src\Sample04\
    ```

1. Run the project with the command

    ```bash
    dotnet run
    ```

1. The project should run and send telemetry to the Aspire Dashboard.