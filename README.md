# Ollama C# Playground

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](/LICENSE)
[![Twitter: elbruno](https://img.shields.io/twitter/follow/elbruno.svg?style=social)](https://twitter.com/elbruno)
![GitHub: elbruno](https://img.shields.io/github/followers/elbruno?style=social)

This project is designed to be opened in GitHub Codespaces as an easy way for anyone to try out SLMs (small language models) entirely in the browser. This project is based on the [Ollama Python Playground](https://github.com/pamelafox/ollama-python-playground/)

1. Create a new  Codespace using the `Code` button at the top of the repository.
![create Codespace](./imgs/05CreateCodeSpace.png)

1. Once the Codespace is loaded, it should have [ollama](https://ollama.com/) pre-installed as well as [.NET 8](https://dotnet.microsoft.com/en-us/download).
1. Ask Ollama to run the SLM of your choice. For example, to run the [phi3](https://ollama.com/library/phi3) model:

    ```shell
    ollama run phi3:mini
    ```

    That will take a few minutes to download the model into the Codespace.
4. Once you see "success" in the output, you can send a message to that model from the prompt.

    ```shell
    >>> Write a joke about kittens
    ```

![run ollama and ask for a joke](./imgs/10ollamarunphi.gif)

5. After several seconds, you should see a response stream in from the model.
6. To learn about different techniques used with language models, check the sample projects in the `.\src` folder:

| Project | Description |
|---------|-------------|
| Sample01  | This is a sample project that uses a the Phi-3 hosted in ollama model to answer a question.  |
| Sample02  | This is a sample project that implement a Console chat using Semantic Kernel. |
| [Sample03](./src/Sample03/readme.md)  | This is a sample project that implement a RAG using local embeddings and Semantic Kernel. Check the details of the local RAG [here](./src/Sample03/readme.md)|
| Sample04 ***(WIP)*** | This is a sample console project that implement a Console chat using Semantic Kernel. It also uses Aspire Dashboard to track telemetry. Check the Aspire Dashboard in the references sections to learn more. |

## How to run a sample

1. Open a terminal and navigate to the desired project. In example, let's run `Sample02`, the console chat.

    ```bash
    cd .\src\Sample02\
    ```

1. Run the project with the command

    ```bash
    dotnet run
    ```

1. The project `Sample02`, defines a custom system message:

    ```csharp
    var history = new ChatHistory();
    history.AddSystemMessage("You are a useful chatbot. If you don't know an answer, say 'I don't know!'. Always reply in a funny ways. Use emojis if possible.");

    ```

1. So when the user ask a question, like `What is the capital of Italy?`, the chat replies using the local mode.
   
    The output is similar to this one:

    ![Chat running demo](./imgs/20SampleConsole.png)

## Video Tutorials

If you want to learn more about how to use this repo, check the following videos:

### Overview of Ollama C# Playground Repository.

[![Watch the video](./imgs/40ytintro.jpg)](https://youtu.be/HmKpHErUEHM)

### Retrieval-Augmented Generation (RAG) with .NET 8: A Full Local Resource Guide

[![Retrieval-Augmented Generation (RAG) with .NET 8: A Full Local Resource Guide](./imgs/41ytrag.png)](https://youtu.be/VVZU-lbEegw)


## References

- [Phi-3 Microsoft Blog](https://aka.ms/phi3blog-april)
- [Phi-3 Technical Report](https://aka.ms/phi3-tech-report)
- [Phi-3 Cookbook](https://aka.ms/Phi-3CookBook)
- [Generative AI for beginners](https://github.com/microsoft/generative-ai-for-beginners)
- [Semantic Kernel main repository](https://github.com/microsoft/semantic-kernel)
- [Smart Components - Local Embeddings](https://github.com/dotnet-smartcomponents/smartcomponents/blob/main/docs/local-embeddings.md)
- [Aspire Dashboard](https://www.aspiredashboard.com/)

## Author

👤 **Bruno Capuano**

* Website: https://elbruno.com
* Twitter: [@elbruno](https://twitter.com/elbruno)
* Github: [@elbruno](https://github.com/elbruno)
* LinkedIn: [@elbruno](https://linkedin.com/in/elbruno)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page](https://github.com/elbruno/phi3-labs//issues).

## Show your support

Give a ⭐️ if this project helped you!


## 📝 License

Copyright &copy; 2024 [Bruno Capuano](https://github.com/elbruno).

This project is [MIT](/LICENSE) licensed.

***
