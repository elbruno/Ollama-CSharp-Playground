# Run Aspire Dashboard
docker run --rm -it -p 18888:18888 -p 4317:18889 -d --name aspire-dashboard mcr.microsoft.com/dotnet/aspire-dashboard:8.0.0

# get Phi-3
ollama run phi3